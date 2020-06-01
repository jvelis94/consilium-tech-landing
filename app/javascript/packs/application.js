// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// import { library, dom } from '@fortawesome/fontawesome-svg-core'
// import { fas } from '@fortawesome/free-solid-svg-icons'
// import { faTwitter } from '@fortawesome/free-brands-svg-icons'
// library.add(fas, faTwitter)
require("jquery")

import ahoy from "ahoy.js";
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import { loadDynamicBannerText } from '../components/banner';

loadDynamicBannerText();

window.getDropdownValue = function() {
    let job_function = document.getElementById('person_job_title').value
    // document.querySelector("label[for='person_Expertise:']").style.display = "contents"
    let expertise_select = document.querySelector('#person_expertise')
    let expertise_div = document.querySelector(".person_expertise")
    let job_title_expertise_mapping = {
        "Software Engineer": ['Front-End', 'Back-End','Full-Stack', 'Machine Learning', 'Mobile', 'Security', 'AR/VR', 'Blockchain', 'Gaming', 'Search'],
        "Data Science": ['Data Scientist', 'Data Analyst','Business Analyst', 'Business Operations'],
        "DevOps": ['Build Engineer', 'Release Engineer','Site Reliability Engineer', 'QA Test Automation Engineer', 'QA Manual Test Engineer'],
        "IT": ['DB Admin', 'Desktop Support','Network Admin', 'Salesforce Dev', 'Solutions Engineer', 'Business Systems Engineer', 'Systems Admin'],
        "Product": ['IT Project Manager', 'Program Manager','Product Manager', 'Brand / Graphic Design', 'UX Design', 'UX Research', 'Visual / UI Design', 'Product Design'],
        "Management": ['CEO', 'CTO','CMO', 'CFO', 'Head of IT', 'Head of Security', 'Head of BD / Sales', 'Head of People', 'Head of Product']
    }
    
    if (job_function != "Other") {
        if (expertise_select == null) {
            let remove_input = document.querySelector("input[name='person[expertise]']")
            remove_input == null ? console.log('already deleted') : remove_input.parentNode.removeChild(remove_input)
            expertise_select = document.createElement('select')
            expertise_select.name = "person[expertise]"
            expertise_select.setAttribute("id", "person_expertise")
            expertise_div.append(expertise_select)
        }
        else {
            while (expertise_select.length > 0) {
                expertise_select.remove(expertise_select.length-1);
            }
            
        }

        job_title_expertise_mapping[job_function].forEach(expertise => {
            let option = document.createElement('option')
            option.value = expertise
            option.text = expertise
            expertise_select.appendChild(option)
        })
    } 
    else {
        // let expertise_select = document.querySelector('#person_expertise')
        expertise_select.parentNode.removeChild(expertise_select)
        let input = document.createElement("input")
        input.name = "person[expertise]"
        expertise_div.append(input)
        console.log(expertise_select)
    }
}


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
