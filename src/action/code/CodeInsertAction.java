package action.code;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Code;
import model.bo.CodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.code.CodeForm;

public class CodeInsertAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CodeForm codeForm = (CodeForm)form;
		
		CodeBO codeBO = new CodeBO();
		
		Code code = new Code();
		
		code.setCode(codeForm.getCode());
//		code.setSubmitId(codeForm.getSubmitId());
		
		codeBO.insertCode(code);
		
		return mapping.findForward("thanhCong");
	}

}
