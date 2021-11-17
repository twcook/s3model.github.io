==================
Examples & Testing
==================

S3Model Translator does not *currently* include Python code testing.

However, there is a test CSV file (test_gen.csv) in the example_Data directory.

This CSV file can be used to test all of the available components as well as validation issues.

All of your models and components are stored in a database *translator.db* in the translator working directory.
You can backup this file to be sure you do not loose any work. You can always delete the database, restart S3Model Translator and it will generate a new blank database. You can copy a backup into the directory to recover a previous version.

In the *example_dbs* directory there is a database file (Demo_translator.db) that contains a completed execution of the Demo tutorial. If you want, you can place this file into the *translator* directory and rename it *translator.db*. Restart the webserver and you can review the completed tutorial data model.

By generating, exporting and validating the models and instances using external tools such as Xerces or Saxon you can verify the validity of S3Model Translator models and data instances.

