package action.code;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.CodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.code.CodeForm;

public class CodeDeleteAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CodeForm codeForm = (CodeForm)form;
		
		String codeId = request.getParameter("codeId");
		
		CodeBO codeBO = new CodeBO();
		
		codeBO.deleteCode(Integer.parseInt(codeId));
		
		return mapping.findForward("thanhCong");
	}

}
