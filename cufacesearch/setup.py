from setuptools import setup, find_packages

setup(
  name='cufacesearch',
  version='0.1',
  packages=find_packages(exclude=['contrib', 'docs', 'tests']),
  install_requires=['numpy', 'scikit-image', 'dlib', 'happybase', 'flask', 'flask_restful', 'requests', 'matplotlib', 'gevent'],
  url='',
  license='BSD',
  author='Svebor Karaman',
  author_email='svebor.karaman@columbia.edu',
  description='Face indexing'
)