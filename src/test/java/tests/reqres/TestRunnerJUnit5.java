package tests.reqres;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunnerJUnit5 {

	/**
	 * This is to run the feature files
	 */
	@Test
	Karate testFeatures() {
		return Karate.run("GET").relativeTo(getClass());
	}
	
	/**
	 * This is to run the feature files with specific tags
	 */
	@Test
	Karate testTags() {
		return Karate.run("GET").tags("smoke").relativeTo(getClass());
	}
	
}
