from lettuce import before, after, world
from selenium import webdriver
import lettuce_webdriver.webdriver

@before.all
def setup_browser():
    world.browser = webdriver.PhantomJS()

@after.all
def teardown_browser(total):
    world.browser.save_screenshot("screen.png")
    world.browser.quit()
