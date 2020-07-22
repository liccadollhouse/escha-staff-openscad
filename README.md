# escha-staff-openscad

OpenSCAD code for Escha's staff.

Version history:

v1.0 - Initial version for San Japan 9 (2016)
v2.0 - Fixed a design flaw in the silver ring surrounding the sphere, and increased the facets on the interior pipe sections.

The way I do my OpenSCAD code is the following:  I create a "master" file with all the modules of the individual parts of the staff.  Then, I create individual OpenSCADs file that includes the master file, and only calls the individual module that is to be printed.  So, in terms of
what you need to print and where they go on the staff, you will assemble the following in order on your PVC pipe(starting from the top of the staff):

EschaStaffSphereUpper
EschaStaffSphereLower
EschaStaffCenterJewel (it comes in two halves, print two copies)
EschaStaffSilverCollar
EschaStaffSilverFlare
EschaStaffBlackKnob
EschaStaffGoldFlare
EschaStaffFerule-revised (this is the bottom of the pipe)

Then, print the silver ring and its components:

EschaStaffCircularHead
EschaStaffTopFerule
EschaStaffFeathers
EschaStaffFeatherHood

You will need to cut two holes in your pipe right in the center section where the red center jewel to allow the silver ring to go into the staff.

The sphere does not have the "nubs" that are on the actual staff; I usually glue cotton balls to the sphere to get the effect.

I am, of course, open to suggestions and improvements, as this was modeled relatively quickly to the point of being rushed.  I will definitely be making improvements to this model as time permits.  You may contact me through GitHub.