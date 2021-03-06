@core @core_filepicker
Feature: Create folders in the file manager
  In order to create a directory structure in a file area
  As a user
  I need to create folders and subfolders in a file area

  @javascript
  Scenario: Create folders and subfolders
    Given the following "courses" exists:
      | fullname | shortname | category |
      | Course 1 | C1 | 0 |
    And I log in as "admin"
    And I follow "Course 1"
    And I turn editing mode on
    And I add a "Folder" to section "0"
    And I fill the moodle form with:
      | Name | Folder resource |
      | Description | The description |
    And I create "Folder 1" folder in "Files" filepicker
    And I open "Folder 1" folder from "Files" filepicker
    And I create "SubFolder 1" folder in "Files" filepicker
    When I open "Files" folder from "Files" filepicker
    Then I should see "Folder 1"
    And I open "Folder 1" folder from "Files" filepicker
    And I should see "SubFolder 1"
    And I press "Save and return to course"
