// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.SEOTUD_KONTAKTISIK;
import ee.itcollege.i377.team28.entities.SUGULUSE_ROLLI_LIIT;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SUGULUSE_ROLLI_LIITController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String SUGULUSE_ROLLI_LIITController.create(@Valid SUGULUSE_ROLLI_LIIT SUGULUSE_ROLLI_LIIT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("SUGULUSE_ROLLI_LIIT", SUGULUSE_ROLLI_LIIT);
            addDateTimeFormatPatterns(uiModel);
            return "suguluse_rolli_liits/create";
        }
        uiModel.asMap().clear();
        SUGULUSE_ROLLI_LIIT.persist();
        return "redirect:/suguluse_rolli_liits/" + encodeUrlPathSegment(SUGULUSE_ROLLI_LIIT.getSuguluse_rolli_liit_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String SUGULUSE_ROLLI_LIITController.createForm(Model uiModel) {
        uiModel.addAttribute("SUGULUSE_ROLLI_LIIT", new SUGULUSE_ROLLI_LIIT());
        addDateTimeFormatPatterns(uiModel);
        return "suguluse_rolli_liits/create";
    }
    
    @RequestMapping(value = "/{suguluse_rolli_liit_id}", method = RequestMethod.GET)
    public String SUGULUSE_ROLLI_LIITController.show(@PathVariable("suguluse_rolli_liit_id") Long suguluse_rolli_liit_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("suguluse_rolli_liit", SUGULUSE_ROLLI_LIIT.findSUGULUSE_ROLLI_LIIT(suguluse_rolli_liit_id));
        uiModel.addAttribute("itemId", suguluse_rolli_liit_id);
        return "suguluse_rolli_liits/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String SUGULUSE_ROLLI_LIITController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("suguluse_rolli_liits", SUGULUSE_ROLLI_LIIT.findSUGULUSE_ROLLI_LIITEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) SUGULUSE_ROLLI_LIIT.countSUGULUSE_ROLLI_LIITs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("suguluse_rolli_liits", SUGULUSE_ROLLI_LIIT.findAllSUGULUSE_ROLLI_LIITs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "suguluse_rolli_liits/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String SUGULUSE_ROLLI_LIITController.update(@Valid SUGULUSE_ROLLI_LIIT SUGULUSE_ROLLI_LIIT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("SUGULUSE_ROLLI_LIIT", SUGULUSE_ROLLI_LIIT);
            addDateTimeFormatPatterns(uiModel);
            return "suguluse_rolli_liits/update";
        }
        uiModel.asMap().clear();
        SUGULUSE_ROLLI_LIIT.merge();
        return "redirect:/suguluse_rolli_liits/" + encodeUrlPathSegment(SUGULUSE_ROLLI_LIIT.getSuguluse_rolli_liit_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{suguluse_rolli_liit_id}", params = "form", method = RequestMethod.GET)
    public String SUGULUSE_ROLLI_LIITController.updateForm(@PathVariable("suguluse_rolli_liit_id") Long suguluse_rolli_liit_id, Model uiModel) {
        uiModel.addAttribute("SUGULUSE_ROLLI_LIIT", SUGULUSE_ROLLI_LIIT.findSUGULUSE_ROLLI_LIIT(suguluse_rolli_liit_id));
        addDateTimeFormatPatterns(uiModel);
        return "suguluse_rolli_liits/update";
    }
    
    @RequestMapping(value = "/{suguluse_rolli_liit_id}", method = RequestMethod.DELETE)
    public String SUGULUSE_ROLLI_LIITController.delete(@PathVariable("suguluse_rolli_liit_id") Long suguluse_rolli_liit_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SUGULUSE_ROLLI_LIIT.findSUGULUSE_ROLLI_LIIT(suguluse_rolli_liit_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/suguluse_rolli_liits";
    }
    
    @ModelAttribute("seotud_kontaktisiks")
    public Collection<SEOTUD_KONTAKTISIK> SUGULUSE_ROLLI_LIITController.populateSEOTUD_KONTAKTISIKs() {
        return SEOTUD_KONTAKTISIK.findAllSEOTUD_KONTAKTISIKs();
    }
    
    @ModelAttribute("suguluse_rolli_liits")
    public Collection<SUGULUSE_ROLLI_LIIT> SUGULUSE_ROLLI_LIITController.populateSUGULUSE_ROLLI_LIITs() {
        return SUGULUSE_ROLLI_LIIT.findAllSUGULUSE_ROLLI_LIITs();
    }
    
    void SUGULUSE_ROLLI_LIITController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("SUGULUSE_ROLLI_LIIT_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("SUGULUSE_ROLLI_LIIT_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("SUGULUSE_ROLLI_LIIT_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String SUGULUSE_ROLLI_LIITController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}