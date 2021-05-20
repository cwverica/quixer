
from datetime import datetime

from flask_bcrypt import Bcrypt
from flask_sqlalchemy import SQLAlchemy


bcrypt = Bcrypt()
db = SQLAlchemy()



class Tool(db.Model):
    
    __tablename__ = "tools"

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )

    name = db.Column(
        db.Text,
        nullable=False,
        unique=True
    )

    substitues = db.Column(
        db.Text
    )


class Ingredient(db.Model):

    __tablename__ = "ingredients"

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )

    name = db.Column(
        db.Text,
        nullable=False,
        unique=True
    )

    category = db.Column(
        db.Text
    )

    notes = db.Column(
        db.Text
    )




class Recipe(db.Model):

    __tablename__ = "recipes"

    id = db.Column(
        db.Integer,
        primary_key=True
    )

    name = db.Column(
        db.Text,
        nullable=False,
        unique=True
    )

    category = db.Column(
        db.Text
    )

    process_EN = db.Column(
        db.Text
    )

    process_ES = db.Column(
        db.Text
    )

    process_FR = db.Column(
        db.Text
    )

    process_DE = db.Column(
        db.Text
    )

    process_IT = db.Column(
        db.Text
    )

    image_url = db.Column(
        db.Text
    )
    
    alcoholic = db.Column(
        db.Boolean,
        nullable=False
    ) 

    created_on = db.Column(
        db.Text
    )

    ingredients = db.relationship(
        'Ingredient',
        secondary='recipe_ingredients'
    )



class User(db.Model):
    """User in the system."""

    __tablename__ = 'users'

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )

    email = db.Column(
        db.Text,
        nullable=False,
        unique=True,
    )

    username = db.Column(
        db.Text,
        nullable=False,
        unique=True,
    )

    image_url = db.Column(
        db.Text,
        default="/static/images/default-pic.png",
    )

    password = db.Column(
        db.Text,
        nullable=False,
    )

    tools = db.relationship(
        'Tool',
        secondary='user_tools'
    )

    ingredients = db.relationship(
        'Ingredient',
        secondary='user_ingredients'
    )

    def __repr__(self):
        return f"<User #{self.id}: {self.username}, {self.email}>"


    @classmethod
    def signup(cls, username, email, password, image_url):
        """Sign up user.

        Hashes password and adds user to system.
        """

        hashed_pwd = bcrypt.generate_password_hash(password).decode('UTF-8')

        user = User(
            username=username,
            email=email,
            password=hashed_pwd,
            image_url=image_url,
        )

        db.session.add(user)
        db.session.commit()
        return user

    @classmethod
    def authenticate(cls, username, password):
        """Find user with `username` and `password`.

        This is a class method (call it on the class, not an individual user.)
        It searches for a user whose password hash matches this password
        and, if it finds such a user, returns that user object.

        If can't find matching user (or if password is wrong), returns False.
        """

        user = cls.query.filter_by(username=username).first()

        if user:
            is_auth = bcrypt.check_password_hash(user.password, password)
            if is_auth:
                return user

        return False


class UserTool(db.Model):

    __tablename__ = "user_tools"

    user_id = db.Column(
        db.Integer,
        db.ForeignKey('users.id'),
        primary_key=True
    )

    tool_id = db.Column(
        db.Integer,
        db.ForeignKey('tools.id'),
        primary_key=True
    )


class Favorite(db.Model):

    __tablename__ = "favorites"

    user_id = db.Column(
        db.Integer,
        db.ForeignKey('users.id'),
        primary_key=True
    )

    recipe_id = db.Column(
        db.Integer,
        db.ForeignKey('recipes.id'),
        primary_key=True
    )

    user_notes = db.Column(
        db.Text
    )

    user_rating = db.Column(
        db.Integer
    )


class UserIngredient(db.Model):

    __tablename__ = "user_ingredients"

    user_id = db.Column(
        db.Integer,
        db.ForeignKey('users.id'),
        primary_key=True
    )

    ingredient_id = db.Column(
        db.Integer,
        db.ForeignKey('ingredients.id'),
        primary_key=True
    )

class RecipeIngredient(db.Model):

    __tablename__ = "recipe_ingredients"

    recipe_id = db.Column(
        db.Integer,
        db.ForeignKey('recipes.id'),
        primary_key=True
    )

    ingredient_id = db.Column(
        db.Integer,
        db.ForeignKey('ingredients.id'),
        primary_key=True
    )

    measurement = db.Column(
        db.Text
    )
    


def connect_db(app):
    """Connect this database to provided Flask app.
    """

    db.app = app
    db.init_app(app)

