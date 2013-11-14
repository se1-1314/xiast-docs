**Software Engineering Project**





**XIAST**

**Software Test Documentation**



**Version: 0.2									Date: 8/11/2013**

**Author**: Youssef Boudiba (QAM)

![image alt text](image_0.png)

1. **Introduction**

The software test documentation is based on the IEEE standard for software test documentation (829-1998). Since we are working on a small project, we will not cover every topics proposed by the standard, but will instead focus on those who are more relevant to our project. 

This documentation consists of 3 parts:

1. **Test specification:**

Consists of describing (major parts of) the software test plan for our project.

By defining a test plan we will be able to cover the management of the tests, how we are going to run those tests, what we are going to tests, etc.

2. **Test execution:**

We will keep tracks of the tests through a test log and report incidents via an incident report in the second part of the document.

3. **Test report:**

Last but not least is the test report. This will be an overview (summary) of some important tests as well as a conclusion of the software test documentation.

    1. **Record of revision**

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
</table>


    2. **References**

1. **_Software project management plan (SPMP): _**

[https://github.com/se1-1314/xiast-docs/blob/master/management/project/spmp.md](https://github.com/se1-1314/xiast-docs/blob/master/management/project/spmp.md)

2. **_Software requirements specifications (SRS):_**

[https://github.com/se1-1314/xiast-docs/blob/master/management/requirements/requirements.md](https://github.com/se1-1314/xiast-docs/blob/master/management/requirements/requirements.md)

1. **Test Specification**

This section describes the software test plan.

    3. **Approach (Testing strategy)**

Since we are following an iterative and incremental development model for our project (check SPMP for more info), our test strategy will consist of a series of different tests. Those tests are specified below and are done by the whole group since the absence of a development team. 

        1. **Unit testing**

Every small amount of source code (or low level software module) that cannot be divided in smaller part is called a unit. Whenever a developer has finished working on such a unit, it will be tested to check whether or not it is conform to its design and requirements. 

        2. **Integration testing**

Integration testing combine and test low level software modules that have been unit tested. This test assures us that the combined higher level module still works and that it is conform to its design and requirements.

        3. **System testing**

System testing tests and combines all integrated (higher level) software component. The test will be performed on the whole system.

    4. **Test items**

Contains a list of items (specified by version and release) we are going to test. Still in progress (may be optional).

    5. **Features to be tested**

Contains a list of features/items the user should test (user point of view) to be sure that the requirements and quality are maintained (may be optional).

    6. **Features not to be tested**

Features with very low risk and features that are not part of a specific release are not candidate for further testing and will be listed here (may be optional).

    7. **Pass/fail criteria**

A test pass if no error occurs and if it’s conform to its design and requirements. Whenever an error occurs while running a test, the responsible developer will open an issue on gitHub and try to find a solution (with whole team if necessary). When a solution is found, a test incident report must be generated to keep track of the occurred error (see 3. test execution for more info).

    8. **Testing tools**

We will be using an open-source testing framework to run the tests. Since no programming language is decided yet we will leave this as well as the next section (2.7) empty.

    9. **Staffing and training needs**

(Empty).

2. **Test Execution**

Both the treatment of errors as keeping track of tests results is described below in this section. We will do this by generating two kinds of documents:

    10. **Test log**

A test log keeps track of what happened during a test and must contain:

1. **_Execution description_**

2. **_Results_**

We will be using gitHub to store the test log under a specific directory. 

    11. **Test incident report**

We will keep track of incidents (bugs, unexpected crashes, unexpected results of a test, etc.) by using the issue tool on gitHub and generating a report whenever and issue has been resolved. Such a report consists of:

1. **_Problem identifying_**

    1. **_Incident description_**

    2. **_Impact on system components_**

2. **_Problem solving_**

    3. **_Priority_**

    4. **_Actions taken_**

    5. **_Solution_**

We will be using gitHub to store the test incident reports under a specific directory. 

3. **Test Report**

This section contains the result and evaluation of important tests as well as a conclusion to the software test document. 

