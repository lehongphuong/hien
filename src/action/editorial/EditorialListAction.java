package action.editorial;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Editorial;
import model.bo.EditorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.editorial.EditorialForm;

public class EditorialListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EditorialForm editorialForm = (EditorialForm) form;

		EditorialBO editorialBO = new EditorialBO();

		ArrayList<Editorial> editorialList = editorialBO.getAllEditorial();

		editorialForm.setEditorialList(editorialList);
		for (Editorial m : editorialList) {
			System.out.println("" + m.getEditId());
			System.out.println("" + m.getSubId());
			System.out.println("" + m.getExplain());
			System.out.println("" + m.getCode());
		}

		return mapping.findForward("thanhCong");
	}

}
