package action.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Type;
import model.bo.TypeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.user.UserForm;

public class UserPrepareInsertAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;
		TypeBO typeBO = new TypeBO();

		ArrayList<Type> typeList = typeBO.getAllType();

		userForm.setTypeList(typeList);

		return mapping.findForward("thanhCong");
	}

}
