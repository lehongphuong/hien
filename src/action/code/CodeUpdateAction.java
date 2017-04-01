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

public class CodeUpdateAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CodeForm codeForm = (CodeForm)form;
		
		CodeBO codeBO = new CodeBO();
		
		Code code = new Code();
		
//		code.setCodeId(codeForm.getCodeId());
//		code.setSubmitId(codeForm.getSubmitId());
//		code.setCode(codeForm.getCode());
//		
//		System.out.println("update thanh cong");
//		codeBO.updateCode(code);
		
		return mapping.findForward("thanhCong");
	}

}
