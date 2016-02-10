/*
 * generated by Xtext
 */
grammar InternalInstance;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.osate.xtext.aadl2.instance.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.osate.xtext.aadl2.instance.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.osate.xtext.aadl2.instance.services.InstanceGrammarAccess;

}

@parser::members {

 	private InstanceGrammarAccess grammarAccess;
 	
    public InternalInstanceParser(TokenStream input, InstanceGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "SystemInstance";	
   	}
   	
   	@Override
   	protected InstanceGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleSystemInstance
entryRuleSystemInstance returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSystemInstanceRule()); }
	 iv_ruleSystemInstance=ruleSystemInstance 
	 { $current=$iv_ruleSystemInstance.current; } 
	 EOF 
;

// Rule SystemInstance
ruleSystemInstance returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getSystemInstanceAccess().getCategoryComponentCategoryParserRuleCall_0_0()); 
	    }
		lv_category_0_0=ruleComponentCategory		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSystemInstanceRule());
	        }
       		set(
       			$current, 
       			"category",
        		lv_category_0_0, 
        		"ComponentCategory");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getSystemInstanceAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSystemInstanceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2=':' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getSystemInstanceAccess().getColonKeyword_2());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getSystemInstanceRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getSystemInstanceAccess().getComponentImplementationComponentImplementationCrossReference_3_0()); 
	    }
		ruleIMPLREF		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_4='{' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getSystemInstanceAccess().getLeftCurlyBracketKeyword_4());
    }
((
(
		{ 
	        newCompositeNode(grammarAccess.getSystemInstanceAccess().getFeatureInstanceFeatureInstanceParserRuleCall_5_0_0()); 
	    }
		lv_featureInstance_5_0=ruleFeatureInstance		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSystemInstanceRule());
	        }
       		add(
       			$current, 
       			"featureInstance",
        		lv_featureInstance_5_0, 
        		"FeatureInstance");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getSystemInstanceAccess().getComponentInstanceComponentInstanceParserRuleCall_5_1_0()); 
	    }
		lv_componentInstance_6_0=ruleComponentInstance		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSystemInstanceRule());
	        }
       		add(
       			$current, 
       			"componentInstance",
        		lv_componentInstance_6_0, 
        		"ComponentInstance");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getSystemInstanceAccess().getSystemOperationModeSystemOperationModeParserRuleCall_5_2_0()); 
	    }
		lv_systemOperationMode_7_0=ruleSystemOperationMode		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSystemInstanceRule());
	        }
       		add(
       			$current, 
       			"systemOperationMode",
        		lv_systemOperationMode_7_0, 
        		"SystemOperationMode");
	        afterParserOrEnumRuleCall();
	    }

)
))*	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getSystemInstanceAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleFeatureInstance
entryRuleFeatureInstance returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFeatureInstanceRule()); }
	 iv_ruleFeatureInstance=ruleFeatureInstance 
	 { $current=$iv_ruleFeatureInstance.current; } 
	 EOF 
;

// Rule FeatureInstance
ruleFeatureInstance returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureInstanceAccess().getDirectionDirectionTypeParserRuleCall_0_0()); 
	    }
		lv_direction_0_0=ruleDirectionType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureInstanceRule());
	        }
       		set(
       			$current, 
       			"direction",
        		lv_direction_0_0, 
        		"DirectionType");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureInstanceAccess().getCategoryFeatureCategoryParserRuleCall_1_0()); 
	    }
		lv_category_1_0=ruleFeatureCategory		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureInstanceRule());
	        }
       		set(
       			$current, 
       			"category",
        		lv_category_1_0, 
        		"FeatureCategory");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getFeatureInstanceAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFeatureInstanceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)(	otherlv_3='[' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getFeatureInstanceAccess().getLeftSquareBracketKeyword_3_0());
    }
(
(
		lv_index_4_0=RULE_LONG
		{
			newLeafNode(lv_index_4_0, grammarAccess.getFeatureInstanceAccess().getIndexLONGTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFeatureInstanceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"index",
        		lv_index_4_0, 
        		"LONG");
	    }

)
)	otherlv_5=']' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getFeatureInstanceAccess().getRightSquareBracketKeyword_3_2());
    }
)?	otherlv_6=':' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getFeatureInstanceAccess().getColonKeyword_4());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getFeatureInstanceRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getFeatureInstanceAccess().getFeatureFeatureCrossReference_5_0()); 
	    }
		ruleFEATREF		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_8='{' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getFeatureInstanceAccess().getLeftCurlyBracketKeyword_6_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureInstanceAccess().getFeatureInstanceFeatureInstanceParserRuleCall_6_1_0()); 
	    }
		lv_featureInstance_9_0=ruleFeatureInstance		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureInstanceRule());
	        }
       		add(
       			$current, 
       			"featureInstance",
        		lv_featureInstance_9_0, 
        		"FeatureInstance");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getFeatureInstanceAccess().getRightCurlyBracketKeyword_6_2());
    }
)?)
;





// Entry rule entryRuleComponentInstance
entryRuleComponentInstance returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getComponentInstanceRule()); }
	 iv_ruleComponentInstance=ruleComponentInstance 
	 { $current=$iv_ruleComponentInstance.current; } 
	 EOF 
;

// Rule ComponentInstance
ruleComponentInstance returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getComponentInstanceAccess().getCategoryComponentCategoryParserRuleCall_0_0()); 
	    }
		lv_category_0_0=ruleComponentCategory		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getComponentInstanceRule());
	        }
       		set(
       			$current, 
       			"category",
        		lv_category_0_0, 
        		"ComponentCategory");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getComponentInstanceAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getComponentInstanceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)(	otherlv_2='[' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getComponentInstanceAccess().getLeftSquareBracketKeyword_2_0());
    }
(
(
		lv_index_3_0=RULE_LONG
		{
			newLeafNode(lv_index_3_0, grammarAccess.getComponentInstanceAccess().getIndexLONGTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getComponentInstanceRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"index",
        		lv_index_3_0, 
        		"LONG");
	    }

)
)	otherlv_4=']' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getComponentInstanceAccess().getRightSquareBracketKeyword_2_2());
    }
)*	otherlv_5=':' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getComponentInstanceAccess().getColonKeyword_3());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getComponentInstanceRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getComponentInstanceAccess().getSubcomponentSubcomponentCrossReference_4_0()); 
	    }
		ruleSUBREF		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_7='{' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getComponentInstanceAccess().getLeftCurlyBracketKeyword_5_0());
    }
((
(
		{ 
	        newCompositeNode(grammarAccess.getComponentInstanceAccess().getFeatureInstanceFeatureInstanceParserRuleCall_5_1_0_0()); 
	    }
		lv_featureInstance_8_0=ruleFeatureInstance		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getComponentInstanceRule());
	        }
       		add(
       			$current, 
       			"featureInstance",
        		lv_featureInstance_8_0, 
        		"FeatureInstance");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getComponentInstanceAccess().getComponentInstanceComponentInstanceParserRuleCall_5_1_1_0()); 
	    }
		lv_componentInstance_9_0=ruleComponentInstance		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getComponentInstanceRule());
	        }
       		add(
       			$current, 
       			"componentInstance",
        		lv_componentInstance_9_0, 
        		"ComponentInstance");
	        afterParserOrEnumRuleCall();
	    }

)
))*	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getComponentInstanceAccess().getRightCurlyBracketKeyword_5_2());
    }
)?)
;





// Entry rule entryRuleSystemOperationMode
entryRuleSystemOperationMode returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSystemOperationModeRule()); }
	 iv_ruleSystemOperationMode=ruleSystemOperationMode 
	 { $current=$iv_ruleSystemOperationMode.current; } 
	 EOF 
;

// Rule SystemOperationMode
ruleSystemOperationMode returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='som' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getSystemOperationModeAccess().getSomKeyword_0());
    }
(
(
		lv_name_1_0=RULE_STRING
		{
			newLeafNode(lv_name_1_0, grammarAccess.getSystemOperationModeAccess().getNameSTRINGTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSystemOperationModeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"STRING");
	    }

)
))
;





// Entry rule entryRuleDirectionType
entryRuleDirectionType returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getDirectionTypeRule()); } 
	 iv_ruleDirectionType=ruleDirectionType 
	 { $current=$iv_ruleDirectionType.current.getText(); }  
	 EOF 
;

// Rule DirectionType
ruleDirectionType returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='in' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDirectionTypeAccess().getInKeyword_0()); 
    }

    |
	kw='out' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDirectionTypeAccess().getOutKeyword_1()); 
    }

    |(
	kw='in' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDirectionTypeAccess().getInKeyword_2_0()); 
    }

	kw='out' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDirectionTypeAccess().getOutKeyword_2_1()); 
    }
))
    ;





// Entry rule entryRuleFeatureCategory
entryRuleFeatureCategory returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFeatureCategoryRule()); } 
	 iv_ruleFeatureCategory=ruleFeatureCategory 
	 { $current=$iv_ruleFeatureCategory.current.getText(); }  
	 EOF 
;

// Rule FeatureCategory
ruleFeatureCategory returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='dataPort' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getDataPortKeyword_0()); 
    }

    |
	kw='eventPort' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getEventPortKeyword_1()); 
    }

    |
	kw='eventDataPort' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getEventDataPortKeyword_2()); 
    }

    |
	kw='parameter' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getParameterKeyword_3()); 
    }

    |
	kw='busAccess' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getBusAccessKeyword_4()); 
    }

    |
	kw='subprogramAccess' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getSubprogramAccessKeyword_5()); 
    }

    |
	kw='subprogramGroupAccess' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getSubprogramGroupAccessKeyword_6()); 
    }

    |
	kw='featureGroup' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getFeatureGroupKeyword_7()); 
    }

    |
	kw='abstractFeature' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFeatureCategoryAccess().getAbstractFeatureKeyword_8()); 
    }
)
    ;





// Entry rule entryRuleComponentCategory
entryRuleComponentCategory returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getComponentCategoryRule()); } 
	 iv_ruleComponentCategory=ruleComponentCategory 
	 { $current=$iv_ruleComponentCategory.current.getText(); }  
	 EOF 
;

// Rule ComponentCategory
ruleComponentCategory returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='abstract' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getAbstractKeyword_0()); 
    }

    |
	kw='bus' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getBusKeyword_1()); 
    }

    |
	kw='data' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getDataKeyword_2()); 
    }

    |
	kw='device' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getDeviceKeyword_3()); 
    }

    |
	kw='memory' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getMemoryKeyword_4()); 
    }

    |
	kw='process' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getProcessKeyword_5()); 
    }

    |
	kw='processor' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getProcessorKeyword_6()); 
    }

    |
	kw='subprogram' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_7()); 
    }

    |(
	kw='subprogram' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_8_0()); 
    }

	kw='group' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getGroupKeyword_8_1()); 
    }
)
    |
	kw='system' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getSystemKeyword_9()); 
    }

    |(
	kw='thread' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getThreadKeyword_10_0()); 
    }

	kw='group' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getGroupKeyword_10_1()); 
    }
)
    |
	kw='thread' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getThreadKeyword_11()); 
    }

    |(
	kw='virtual' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getVirtualKeyword_12_0()); 
    }

	kw='bus' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getBusKeyword_12_1()); 
    }
)
    |(
	kw='virtual' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getVirtualKeyword_13_0()); 
    }

	kw='processor' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getComponentCategoryAccess().getProcessorKeyword_13_1()); 
    }
))
    ;





// Entry rule entryRuleIMPLREF
entryRuleIMPLREF returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getIMPLREFRule()); } 
	 iv_ruleIMPLREF=ruleIMPLREF 
	 { $current=$iv_ruleIMPLREF.current.getText(); }  
	 EOF 
;

// Rule IMPLREF
ruleIMPLREF returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getIMPLREFAccess().getIDTerminalRuleCall_0_0()); 
    }

	kw='::' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getIMPLREFAccess().getColonColonKeyword_0_1()); 
    }
)+    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getIMPLREFAccess().getIDTerminalRuleCall_1()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getIMPLREFAccess().getFullStopKeyword_2()); 
    }
    this_ID_4=RULE_ID    {
		$current.merge(this_ID_4);
    }

    { 
    newLeafNode(this_ID_4, grammarAccess.getIMPLREFAccess().getIDTerminalRuleCall_3()); 
    }
)
    ;





// Entry rule entryRuleFEATREF
entryRuleFEATREF returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFEATREFRule()); } 
	 iv_ruleFEATREF=ruleFEATREF 
	 { $current=$iv_ruleFEATREF.current.getText(); }  
	 EOF 
;

// Rule FEATREF
ruleFEATREF returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getFEATREFAccess().getIDTerminalRuleCall_0_0()); 
    }

	kw='::' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFEATREFAccess().getColonColonKeyword_0_1()); 
    }
)+    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getFEATREFAccess().getIDTerminalRuleCall_1()); 
    }

	kw='::' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFEATREFAccess().getColonColonKeyword_2()); 
    }
    this_ID_4=RULE_ID    {
		$current.merge(this_ID_4);
    }

    { 
    newLeafNode(this_ID_4, grammarAccess.getFEATREFAccess().getIDTerminalRuleCall_3()); 
    }
)
    ;





// Entry rule entryRuleSUBREF
entryRuleSUBREF returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getSUBREFRule()); } 
	 iv_ruleSUBREF=ruleSUBREF 
	 { $current=$iv_ruleSUBREF.current.getText(); }  
	 EOF 
;

// Rule SUBREF
ruleSUBREF returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getSUBREFAccess().getIDTerminalRuleCall_0_0()); 
    }

	kw='::' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getSUBREFAccess().getColonColonKeyword_0_1()); 
    }
)+    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getSUBREFAccess().getIDTerminalRuleCall_1()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getSUBREFAccess().getFullStopKeyword_2()); 
    }
    this_ID_4=RULE_ID    {
		$current.merge(this_ID_4);
    }

    { 
    newLeafNode(this_ID_4, grammarAccess.getSUBREFAccess().getIDTerminalRuleCall_3()); 
    }

	kw='::' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getSUBREFAccess().getColonColonKeyword_4()); 
    }
    this_ID_6=RULE_ID    {
		$current.merge(this_ID_6);
    }

    { 
    newLeafNode(this_ID_6, grammarAccess.getSUBREFAccess().getIDTerminalRuleCall_5()); 
    }
)
    ;





RULE_ID : ('a'..'z'|'A'..'Z') ('_'? ('a'..'z'|'A'..'Z'|'0'..'9'))*;

RULE_LONG : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_SL_COMMENT : '--' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;


