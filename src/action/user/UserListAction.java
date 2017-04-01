package action.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.user.UserForm;

public class UserListAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm=(UserForm)form;
		
		UserBO userBO=new UserBO();
		
		ArrayList<User> userList = userBO.getAllUser();
		
		userForm.setUserList(userList);
		return mapping.findForward("thanhCong");
	}

}
