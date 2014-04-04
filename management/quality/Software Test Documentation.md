<h1>Software Test Documentation</h1>



<h4>Version: 3.0<br />
Date: xx/xx/2014</h4>	
<h5>Author: Youssef Boudiba (QAM)</h5>



<h4>Abstract</h4>
<p>The software test documentation of the xiast project, a scheduling application for students, is based on the IEEE standard for software test documentation (829-1998).</p>



<h4>Record of revision</h4>
<table>
  <tr>
    <td>Revision</td>
    <td>Revision date</td>
    <td>Description</td>
  </tr>
  <tr>
    <td>V0.1</td>
    <td>8/11/2013</td>
    <td>Initial draft</td>
  </tr>
  <tr>
    <td>V0.2</td>
    <td>10/11/2013</td>
    <td>added additional content</td>
  </tr>
  <tr>
    <td>V0.3</td>
    <td>8/12/2013</td>
    <td>removing unnecessary content and updating topics</td>
  </tr>
    <tr>
    <td>V1.0</td>
    <td>12/12/2013</td>
    <td>ready for delivery: iteration 1</td>
  </tr>
    </tr>
    <tr>
    <td>V2.0</td>
    <td>02/03/2014</td>
    <td>specified testing framework</td>
  </tr>
</table>



<h4>Contents</h4>
<p>...</p>



<h2>1. Scope</h2>
<p>This document ensure that the quality of the xiast project will be maintained by following a set of testing standards and practices based on the above mentioned IEEE document.</p>


<h2>2. References</h2>
1. **_Software project management plan (SPMP):_**
 [https://github.com/se1-1314/xiast-docs/blob/master/management/project/spmp.md](https://github.com/se1-1314/xiast-docs/blob/master/management/project/spmp.md)
2. **_Software requirements specifications (SRS):_**
[https://github.com/se1-1314/xiast-docs/blob/master/management/requirements/requirements.md](https://github.com/se1-1314/xiast-docs/blob/master/management/requirements/requirements.md)
3. **_clojure.test API:_**
[http://richhickey.github.io/clojure/clojure.test-api.html](http://richhickey.github.io/clojure/clojure.test-api.html)



<h2>3. Definitions</h2>
<h4>3.1. SPMP</h4>
<p>Software Project Management Plan</p>
<h4>3.2. SRS</h4>
<p>Software Requirements Specifications.</p>
<h4>3.3. STD</h4>
<p>Software Test Documentaion</p>
<h4>3.4. Test incident report</h4>
<p>A document reporting on any event that occurs during the testing process which requires investigation.</p>



<h2>4. Test Plan</h2>

<h3>4.1. Purpose</h3>
<p>The test plan describes the scope, approach, resources, features to be tested, the testing tasks and the risks of the project.</p>

<h3>4.2. Test plan identifier</h3>
XIAST_TP

<h3>4.3. Introduction</h3>
<p>Software items and features defined in the SRS wil be tested.</p>

<h3>4.4. Test items</h3>
<p>The test items can be divided in the following fields:</p>

<h4>4.4.1 Database querying...</h4>
<table>
  <tr>
    <td><strong>Name</strong></td>
    <td><strong>File type</strong></td>
    <td><strong>File location</strong></td>
  </tr>
</table>
<h4>4.4.2 Other</h4>
<table>
  <tr>
    <td><strong>Name</strong></td>
    <td><strong>File type</strong></td>
    <td><strong>File location</strong></td>
  </tr>
  <tr>
    <td>all</td>
    <td>clojure</td>
    <td>se1-1314/xiast/resources/dictionaries</td>
  </tr>
</table>

<h3>4.5. Features to be tested</h3>
<p>All features are to be tested and have its unit tests.</p>

<h3>4.6. Features not to be tested</h3>
<p>Source files including constants will not be tested.</p>

<h3>4.7. Approach</h3>
<p>Our test strategy will consist of a series of different tests. These tests are specified below and are performed by the whole team.</p> 

<h4>4.7.1. Unit testing</h4>
<p>Every small amount of source code (or low level software module) that cannot be divided in smaller part is called a unit. Whenever a developer has finished working on such a unit, it will be tested to check whether or not it is conform to its design and requirements.</p> 
<h4>4.7.2. Integration testing</h4>
<p>Integration testing combine and test low level software modules that have been unit tested. This test ensures that the combined higher level module still works as specified.</p>
<h4>4.7.3. System testing</h4>
<p>System testing tests and combines all integrated (higher level) software component. The test will be performed on the whole system in order to find deviations from the specified requirments.</p>
<h4>4.7.3. Security testing</h4>
<p>Detect and eliminates security errors such as invalid inputs, etc.</p>

<h3>4.8. Item pass/fail criteria</h3>
<p>A test pass if no error occurs and if it's conform to its design and requirements.</p>

<h3>4.9. Suspension criteria and resumption requirements</h3>
<p>Test are suspended whenever a bug occures. Once the bug has been resolved, the testing activities can resume.</p>

<h3>4.10. Test deliverables</h3>
<p>The following documents should be delivered:</p>
<ol>
	<li>Test plan</li>
	<li>Test design specifications</li>
	<li>Test case specifications</li>
	<li>Test procedure speciÞcations</li>
	<li>Test item transmittal reports</li>
	<li>Test logs</li>
	<li>Test incident reports</li>
	<li>Test summary reports</li>
</ol>

<h3>4.11. Testing Tasks</h3>
<p>...</p>

<h3>4.12. Environmental needs</h3>
<p>All tests are done using the unit testing framework clojure.test. clojure.test library provide us several functions that works by means of assertions. When a test fails a report is automatically generated and can be used to identitify the problem.</p>

<h3>4.13. Responsibilities</h3>
<p>Every teammember is responsible for his own sets of tests. The quality manager must  always check them to be sure that the test are following the test plan.</p>

<h3>4.14. Staffing and training needs</h3>
<p>...</p>

<h3>4.15. Schedule</h3>
<p>A set of milestones can be found at: https://github.com/se1-1314/xiast/issues/milestones. At the end of each iteration a due date is decided and each activity includes its tests.</p>

<h3>4.13. Risks and contingencies</h3>
<p>Whenever a testing activity has not (or cannot) been completed, the quality manager must figure a solution to the situation.</p>

<h3>4.13. Approvals</h3>
<p>This plan must be approved by the whole xiast team.</p>
