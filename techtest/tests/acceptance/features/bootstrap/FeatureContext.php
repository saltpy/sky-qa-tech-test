<?php

use Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

set_include_path(get_include_path() . PATH_SEPARATOR . "../../lib");

require_once("iCalculator.php");
require_once("iScientificCalculator.php");
require_once("Calculator.php");

class FeatureContext extends BehatContext {
    protected $calculator;

    public function __construct() {
        $this->calculator = new Calculator();
    }

    /**
     * @Given /^I enter "(-?\d+)" into the calculator$/
     */
    public function iEnterIntoTheCalculator($argument1) {
        $this->calculator->pressNumber($argument1);
    }

    /**
     * @Given /^I enter "(-?\d+\.\d+)" into the calculator$/
     */
    public function iEnterAFloatingNumberIntoTheCalculator($argument1) {
        $this->calculator->pressNumber($argument1);
    }

    /**
     * @when /^I hit "hex"$/
     */
    public function iHitHex() {
        $this->calculator->pressConvertToHex();
    }

    /**
     * @When /^I hit "multiply"$/
     */
    public function iHitMultiply() {
        $this->calculator->pressMultiply();
    }

    /**
     * @When /^I hit "divide"$/
     */
    public function iHitDivide() {
        $this->calculator->pressDivide();
    }

    /**
     * @Given /^I hit "equals"$/
     */
    public function iHitEquals() {
        $this->calculator->pressEquals();
    }

    /**
     * @when /^I hit "factorial"$/
     */
    public function iHitFactorial() {
        $this->calculator->pressFactorial();
    }

    /**
     * @when /^I hit "add"$/
     */
    public function iHitAdd() {
        $this->calculator->pressAdd();
    }

    /**
     * @when /^I hit "subtract"$/
     */
    public function iHitSubtract() {
        $this->calculator->pressSubtract();
    }

    /** 
     * @Then /^I see a result of "(.+)"$/
     */
    public function iSeeAResultOf($argument1) {
        $result = $this->calculator->readScreen();
        if (is_numeric($argument1)) {
            if(abs($result - $argument1) > 0.000001) {
                throw new Exception("Wrong result, actual is [$result]");
            }
        } else {
            if($result != $argument1) {
                throw new Exception("Wrong result, actual is [$result]");
            }
        }
    }
}
