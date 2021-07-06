# Salesforce Deploy Toolbox

This tool is basically mainly composed of a big ant script. 

Combined with ant, that script will let you:

1. Create a package.xml of almost every metadata of a Salesforce organization (just wildcards or named members) ;
2. Retrieve and deploy metadata of a Salesforce organization ;
3. Manipulate metadata local files before deploying it to another Salesforce organization; like removing permissions, classes access, apex page accesses in all your profiles at once, substitute any values (like Hard Coded Salesforce Id) ;
4. Run all or local unit tests of a Salesforce organization (API 33.0 minimum) ;
5. Retrieve a full backup (including standard object and fields) from an organization ;
6. Interact with a local git from the script to commit/checkout and run diff comparison ;
7. And much more...

To use the sdt.sh command line, please remember to add the 'x' mod to the file (chmod +x)
and use ./sdt.sh instead of sdt.sh directyy.

Full information here: https://salesforce.quip.com/XHJdAx9VH62e
