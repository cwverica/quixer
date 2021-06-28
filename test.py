from unittest import TestCase
from app import app
from flask import session

class FlaskTests(TestCase):
    
    def setUp(self):
        app.config['TESTING'] = True
        app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = False


    def test_homepage(self):
         with app.test_client() as client:
            resp = client.get('/')
            html = resp.get_data(as_text=True)
            
            self.assertEqual(resp.status_code, 200)
            self.assertIn('Welcome to Quixr!', html)
            self.assertIn('<a class="navbar-brand" href="/">', html)
            self.assertIn('<img src="https://www.thecocktaildb.com/images/media/drink/', html)

    def test_display_recipe(self):
        with app.test_client() as client:
            resp = client.get('/display/recipe/15997')
            html = resp.get_data(as_text=True)
            
            self.assertEqual(resp.status_code, 200)
            self.assertIn('GG', html)
            self.assertIn('Galliano', html)
            self.assertIn("Instructions", html)
            self.assertNotIn('<a class="btn btn-primary btn-sm mb-5" href="/display/results/0">Back to Results</a>', html)

    def test_display_recipe_from_search(self):
        with app.test_client() as client:
            resp = client.get('/display/recipe/15997?from=search&page_num=0')
            html = resp.get_data(as_text=True)
            
            self.assertEqual(resp.status_code, 200)
            self.assertIn('GG', html)
            self.assertNotIn('Not Found', html)
            self.assertNotIn("Whiskey ", html)
            self.assertIn('<a class="btn btn-primary btn-sm mb-5" href="/display/results/0">Back to Results</a>', html)
