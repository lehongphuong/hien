package action.tutorial;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Tutorial;
import model.bo.TutorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorial.TutorialForm;

public class TutListAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TutorialForm tutorialForm=(TutorialForm)form;
		
		TutorialBO tutorialBO=new TutorialBO();
		

		ArrayList<Tutorial> tutorialList=tutorialBO.getAllTutorial();
		
//		
		tutorialForm.setTutorialList(tutorialList);
////		for(Menu m: menuList){
////			System.out.println(""+m.getMenuId());
////			System.out.println(""+m.getName());
////			System.out.println(""+m.getPositive());
////		}	
		
		
		
		
		return mapping.findForward("thanhCong");
	}

	
}
