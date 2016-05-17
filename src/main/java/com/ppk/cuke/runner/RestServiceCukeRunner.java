package com.ppk.cuke.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = { "classpath:feature" }, glue = { "classpath:com.ppk.cuke" }, plugin = { "pretty",
		"html:target/cucumber", "json:target/cucumber.json" })
public class RestServiceCukeRunner {

}
