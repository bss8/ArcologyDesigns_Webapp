package com.arcologydesigns.rest.springmvc.controller;

/**
 * Created by boris on 4/27/2017.
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("/")
public class AppController {

    @RequestMapping(value = { "/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        return "/";
    }

    @RequestMapping(value = { "/sitefeatures"}, method = RequestMethod.GET)
    public String siteFeaturesPage(ModelMap model) {
        return "sitefeatures";
    }

    @RequestMapping(value = { "/products"}, method = RequestMethod.GET)
    public String productsPage(ModelMap model) {
        return "products";
    }

    @RequestMapping(value = { "/contact"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contact";
    }

    @RequestMapping(value = { "/about"}, method = RequestMethod.GET)
    public String aboutPage(ModelMap model) { return "about"; }

    @RequestMapping(value = { "/downloads"}, method = RequestMethod.GET)
    public String sampleFilesPage(ModelMap model) { return "downloads"; }

    @RequestMapping(value = { "/videoDownload"}, method = RequestMethod.GET)
    public String videoDownloadPage(ModelMap model) { return "videoDownload"; }

    @RequestMapping(value = { "/resumes"}, method = RequestMethod.GET)
    public String resumesPage(ModelMap model) { return "resumes"; }

    @RequestMapping(value = { "/technicalInterviews"}, method = RequestMethod.GET)
    public String technicalInterviewsPage(ModelMap model) { return "technicalInterviews"; }

    @RequestMapping(value = { "/hotCareerTips"}, method = RequestMethod.GET)
    public String hotCareerTipsPage(ModelMap model) { return "hotCareerTips"; }

    @RequestMapping(value = { "/springREST"}, method = RequestMethod.GET)
    public String springRESTPage(ModelMap model) { return "springREST"; }

    @RequestMapping(value = { "/databases"}, method = RequestMethod.GET)
    public String databasesPage(ModelMap model) { return "databases"; }

    @RequestMapping(value = { "/uiux"}, method = RequestMethod.GET)
    public String uiuxPage(ModelMap model) { return "uiux"; }

    @RequestMapping(value = { "/buildAutomation"}, method = RequestMethod.GET)
    public String buildAutomationPage(ModelMap model) { return "buildAutomation"; }

    @RequestMapping(value = { "/algorithms"}, method = RequestMethod.GET)
    public String algorithmsPage(ModelMap model) { return "algorithms"; }

    @RequestMapping(value = { "/restExample"}, method = RequestMethod.GET)
    public String restExamplePage(ModelMap model) { return "restExample"; }

    @RequestMapping(value = { "/javascriptExample"}, method = RequestMethod.GET)
    public String javascriptExamplePage(ModelMap model) { return "javascriptExample"; }

    @RequestMapping(value = { "/javaClientExample"}, method = RequestMethod.GET)
    public String javaClientExamplePage(ModelMap model) { return "javaClientExample"; }

    @RequestMapping(value = { "/cppClient"}, method = RequestMethod.GET)
    public String cppClientPage(ModelMap model) { return "cppClient"; }

    @RequestMapping(value = { "/convertingBases"}, method = RequestMethod.GET)
    public String convertingBasesPage(ModelMap model) { return "convertingBases"; }

    @RequestMapping(value = { "/ieee754"}, method = RequestMethod.GET)
    public String ieee754Page(ModelMap model) { return "ieee754"; }

    @RequestMapping(value = { "/encoding"}, method = RequestMethod.GET)
    public String encodingPage(ModelMap model) { return "encoding"; }

    @RequestMapping(value = { "/binary"}, method = RequestMethod.GET)
    public String binaryPage(ModelMap model) { return "binary"; }

    @RequestMapping(value = { "/bitwise"}, method = RequestMethod.GET)
    public String bitwisePage(ModelMap model) { return "bitwise"; }

    @RequestMapping(value = { "/mipsBasicConverter"}, method = RequestMethod.GET)
    public String mipsBasicConverterPage(ModelMap model) { return "mipsBasicConverter"; }

    @RequestMapping(value = { "/mipsExamples"}, method = RequestMethod.GET)
    public String mipsExamplesPage(ModelMap model) { return "mipsExamples"; }

    @RequestMapping(value = { "/webApplications"}, method = RequestMethod.GET)
    public String webApplicationsPage(ModelMap model) { return "webApplications"; }

    @RequestMapping(value = { "/clientApplications"}, method = RequestMethod.GET)
    public String clientApplicationsPage(ModelMap model) { return "clientApplications"; }

    @RequestMapping(value = { "/designPhilosophy"}, method = RequestMethod.GET)
    public String designPhilosophyPage(ModelMap model) { return "designPhilosophy"; }

    @RequestMapping(value = { "/architectureResources"}, method = RequestMethod.GET)
    public String architectureResourcesPage(ModelMap model) { return "architectureResources"; }

    @RequestMapping(value = { "/javaStack"}, method = RequestMethod.GET)
    public String javaStackPage(ModelMap model) { return "javaStack"; }

    @RequestMapping(value = { "/dotNetStack"}, method = RequestMethod.GET)
    public String dotNetStackPage(ModelMap model) { return "dotNetStack"; }

    @RequestMapping(value = { "/objectOriented"}, method = RequestMethod.GET)
    public String appVsSitePage(ModelMap model) { return "objectOriented"; }

    @RequestMapping(value = { "/neglectedDiseases"}, method = RequestMethod.GET)
    public String neglectedDiseasesPage(ModelMap model) { return "neglectedDiseases"; }

    @RequestMapping(value = { "/senescence"}, method = RequestMethod.GET)
    public String senescencePage(ModelMap model) { return "senescence"; }

    @RequestMapping(value = { "/myVision"}, method = RequestMethod.GET)
    public String myVisionPage(ModelMap model) { return "myVision"; }

    @RequestMapping(value = { "/gallery"}, method = RequestMethod.GET)
    public String galleryPage(ModelMap model) { return "gallery"; }

    @RequestMapping(value = { "/developmentTutorials"}, method = RequestMethod.GET)
    public String developmentTutorialsPage(ModelMap model) { return "developmentTutorials"; }

    @RequestMapping(value = { "/itTutorials"}, method = RequestMethod.GET)
    public String itTutorialsPage(ModelMap model) { return "itTutorials"; }

    @RequestMapping(value = { "/careerSeries"}, method = RequestMethod.GET)
    public String careerSeriesPage(ModelMap model) { return "careerSeries"; }

    @RequestMapping(value = { "/music"}, method = RequestMethod.GET)
    public String musicPage(ModelMap model) { return "music"; }

} //end class
