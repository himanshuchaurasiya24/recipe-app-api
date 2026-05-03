from django.test import TestCase
from app import calc


class CalcTest(TestCase):
    def test_add_numbers(self):
        res = calc.add(2, 3)
        self.assertEqual(res, 1)
