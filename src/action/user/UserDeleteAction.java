package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.user.UserForm;

public class UserDeleteAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm userForm=(UserForm) form;
		
		String userId=request.getParameter("userId");

		UserBO userBO=new UserBO();
		
		userBO.deleteUser(Integer.parseInt(userId));
		
		return mapping.findForward("thanhCong");
	}
}
