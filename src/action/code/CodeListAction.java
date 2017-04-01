package action.code;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Code;
import model.bo.CodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.code.CodeForm;

public class CodeListAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
				CodeForm codeForm = (CodeForm)form;
				
				CodeBO codeBO = new CodeBO();
				
				ArrayList<Code> codeList = codeBO.getAllCode();
				
				codeForm.setCodeList(codeList);
				
				return mapping.findForward("thanhCong");
	}
}
