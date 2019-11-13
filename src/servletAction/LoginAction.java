package servletAction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import actionForm.LoginValidationForm;
import domain.DAOContact;

public class LoginAction extends Action{
	
	public ActionForward execute(final ActionMapping pMapping, ActionForm pForm,final HttpServletRequest pRequest, final HttpServletResponse pResponse) {
		final LoginValidationForm lForm= (LoginValidationForm)pForm;
		final String name=lForm.getName();
		final String password=lForm.getPassword();
		
		if(name.equals(password)) {
			HttpSession session = pRequest.getSession();
			final DAOContact lDAOContact = new DAOContact();
			final List liste = lDAOContact.allContact();
			session.setAttribute("allContact", liste);
			return pMapping.findForward("menu");
		}
		else {
			return pMapping.findForward("index");
		}
	}

}
