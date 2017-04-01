package action.code;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Code;
import model.bo.CodeBO;
import model.bo.SubmitBO;
import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.code.CodeForm;

public class CodePrepareUpdateAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
		CodeForm codeForm = (CodeForm)form;
		
		String codeId = request.getParameter("codeId");
		
		CodeBO codeBO = new CodeBO();
		
		UserBO userBO = new UserBO();
		
		
		SubmitBO submitBO = new SubmitBO();
		
//		Code code = codeBO.getOneCodeById(codeId);
//		
//		codeForm.setCodeId(code.getCodeId());
//		codeForm.setSubmitId(code.getSubmitId());
//		codeForm.setCode(code.getCode());
//		
//		codeForm.setSubmitList(submitBO.getAllSubmit());
//		
//		codeForm.setUserList(userBO.getAllUser());
//		
		
		
		return mapping.findForward("thanhCong");
	}

}
