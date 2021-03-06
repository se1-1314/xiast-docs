## Software Quality Assurance Plan  ##

The Software Quality Assurance Plan (SQAP) is based on the IEEE standard for software quality assurance plans (730-2002). Since almost all information can be found in the SPMP, we will not cover every topics proposed by the standard. 

### 1. Purpose ###

This SQAP's objective is to ensure that the project does not deviate from its requirements and that a certain level of quality is maintained. By defining several methods and guidelines we ensure that the development of the project proceeds smoothly while keeping the quality high.

### 2. Tasks ###

The main tasks of the QAM consist of:

* Writing and updating of the SQAP.
* Writing and updating of the STD.
* Checking whether or not the delivered documents confirm to their purpose.
* Checking if all documents are consistent and follows established guidelines (coding style, use of template for all documents, etc.).

### 3. Standards, practices, conventions and metrics ###

#### Documentation Standards ####

All documents must be based on IEEE standards and follow a certain template.

All documentation and source code must be written in English (except meetings reports that will be written in Dutch).

#### Coding (and comment) Standards ####

The code documentation must follow the SDP.

#### Testing standards ####

Testing of code must follow steps of to the STD.

#### Metrics ####

During random checks, the quality of the project will be measured by using following metrics:

* Test Pass Rate.
* Numbers of bugs found per tests.
* Time to fix bug/close issue.

Exact numbers will be communicated later.

#### Conventions ####

We'll organize weekly meetings to resume the current state of the project and to discuss the evolution of it.

### 4. Test ###

All the information about testing methodology, procedures and execution can be found in the STD.

### 5. Problem reporting and corrective actions ###

**Documents:**

Problems concerning structure and content of documents are communicated to the author. Small mistakes (such as spelling mistakes, etc.), are also informed to the author.

**Source Code:**

Whenever a member does not agree with the implementation of a feature or a small function, an issue will be opened and the code will be reviewed by the group. 

### 5. Tools ###

See reference.

### 6. Media Control ###

Standards described in the SCMP must be followed by the whole team and controlled by the QAM. 

### 7. Supplier Control ###

Software provide by an external provider must undergo a series of tests and must conform to the requirements before integrating the project.

### 8. Records collection, maintenance and retenetion ###

All documents are stored remotely at the gitHub repository ([https://github.com/se1-1314](https://github.com/se1-1314)) and locally.

### 9. Training ###

The project will require certain knowledge of tools and languages. To prevent team members from getting lost during the project, following tools and languages must be mastered by the whole team:

* HTML
* Javascript
* Clojure
* Git
