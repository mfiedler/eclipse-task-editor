/*
* generated by Xtext
*/
grammar InternalQuery;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package de.sebastianbenz.task.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package de.sebastianbenz.task.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import de.sebastianbenz.task.services.QueryGrammarAccess;

}

@parser::members {

 	private QueryGrammarAccess grammarAccess;
 	
    public InternalQueryParser(TokenStream input, QueryGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Query";	
   	}
   	
   	@Override
   	protected QueryGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleQuery
entryRuleQuery returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getQueryRule()); }
	 iv_ruleQuery=ruleQuery 
	 { $current=$iv_ruleQuery.current; } 
	 EOF 
;

// Rule Query
ruleQuery returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getQueryAccess().getQueryAction_0(),
            $current);
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getQueryAccess().getExpressionOrExprParserRuleCall_1_0()); 
	    }
		lv_expression_1_0=ruleOrExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getQueryRule());
	        }
       		set(
       			$current, 
       			"expression",
        		lv_expression_1_0, 
        		"OrExpr");
	        afterParserOrEnumRuleCall();
	    }

)
)?)
;





// Entry rule entryRuleOrExpr
entryRuleOrExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOrExprRule()); }
	 iv_ruleOrExpr=ruleOrExpr 
	 { $current=$iv_ruleOrExpr.current; } 
	 EOF 
;

// Rule OrExpr
ruleOrExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getOrExprAccess().getAndExprParserRuleCall_0()); 
    }
    this_AndExpr_0=ruleAndExpr
    { 
        $current = $this_AndExpr_0.current; 
        afterParserOrEnumRuleCall();
    }
((
    {
        $current = forceCreateModelElementAndSet(
            grammarAccess.getOrExprAccess().getOrExprLeftAction_1_0(),
            $current);
    }
)(	otherlv_2='or' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getOrExprAccess().getOrKeyword_1_1_0());
    }

    |	otherlv_3='||' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getOrExprAccess().getVerticalLineVerticalLineKeyword_1_1_1());
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getOrExprAccess().getRightAndExprParserRuleCall_1_2_0()); 
	    }
		lv_right_4_0=ruleAndExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOrExprRule());
	        }
       		set(
       			$current, 
       			"right",
        		lv_right_4_0, 
        		"AndExpr");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRuleAndExpr
entryRuleAndExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAndExprRule()); }
	 iv_ruleAndExpr=ruleAndExpr 
	 { $current=$iv_ruleAndExpr.current; } 
	 EOF 
;

// Rule AndExpr
ruleAndExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getAndExprAccess().getCompEqExprParserRuleCall_0()); 
    }
    this_CompEqExpr_0=ruleCompEqExpr
    { 
        $current = $this_CompEqExpr_0.current; 
        afterParserOrEnumRuleCall();
    }
((
    {
        $current = forceCreateModelElementAndSet(
            grammarAccess.getAndExprAccess().getAndExprLeftAction_1_0(),
            $current);
    }
)(	otherlv_2='and' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getAndExprAccess().getAndKeyword_1_1_0());
    }

    |	otherlv_3='&&' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getAndExprAccess().getAmpersandAmpersandKeyword_1_1_1());
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAndExprAccess().getRightCompEqExprParserRuleCall_1_2_0()); 
	    }
		lv_right_4_0=ruleCompEqExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAndExprRule());
	        }
       		set(
       			$current, 
       			"right",
        		lv_right_4_0, 
        		"CompEqExpr");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRuleCompEqExpr
entryRuleCompEqExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCompEqExprRule()); }
	 iv_ruleCompEqExpr=ruleCompEqExpr 
	 { $current=$iv_ruleCompEqExpr.current; } 
	 EOF 
;

// Rule CompEqExpr
ruleCompEqExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getCompEqExprAccess().getCompExprParserRuleCall_0()); 
    }
    this_CompExpr_0=ruleCompExpr
    { 
        $current = $this_CompExpr_0.current; 
        afterParserOrEnumRuleCall();
    }
((
    {
        $current = forceCreateModelElementAndSet(
            grammarAccess.getCompEqExprAccess().getCompEqExprLeftAction_1_0(),
            $current);
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCompEqExprAccess().getOperatorCompEqOperatorEnumRuleCall_1_1_0()); 
	    }
		lv_operator_2_0=ruleCompEqOperator		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCompEqExprRule());
	        }
       		set(
       			$current, 
       			"operator",
        		lv_operator_2_0, 
        		"CompEqOperator");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCompEqExprAccess().getRightCompExprParserRuleCall_1_2_0()); 
	    }
		lv_right_3_0=ruleCompExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCompEqExprRule());
	        }
       		set(
       			$current, 
       			"right",
        		lv_right_3_0, 
        		"CompExpr");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRuleCompExpr
entryRuleCompExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCompExprRule()); }
	 iv_ruleCompExpr=ruleCompExpr 
	 { $current=$iv_ruleCompExpr.current; } 
	 EOF 
;

// Rule CompExpr
ruleCompExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getCompExprAccess().getUnaryExprParserRuleCall_0()); 
    }
    this_UnaryExpr_0=ruleUnaryExpr
    { 
        $current = $this_UnaryExpr_0.current; 
        afterParserOrEnumRuleCall();
    }
((
    {
        $current = forceCreateModelElementAndSet(
            grammarAccess.getCompExprAccess().getCompExprLeftAction_1_0(),
            $current);
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCompExprAccess().getOperatorCompOperatorEnumRuleCall_1_1_0()); 
	    }
		lv_operator_2_0=ruleCompOperator		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCompExprRule());
	        }
       		set(
       			$current, 
       			"operator",
        		lv_operator_2_0, 
        		"CompOperator");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCompExprAccess().getRightUnaryExprParserRuleCall_1_2_0()); 
	    }
		lv_right_3_0=ruleUnaryExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCompExprRule());
	        }
       		set(
       			$current, 
       			"right",
        		lv_right_3_0, 
        		"UnaryExpr");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRuleUnaryExpr
entryRuleUnaryExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getUnaryExprRule()); }
	 iv_ruleUnaryExpr=ruleUnaryExpr 
	 { $current=$iv_ruleUnaryExpr.current; } 
	 EOF 
;

// Rule UnaryExpr
ruleUnaryExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getUnaryExprAccess().getAtomParserRuleCall_0()); 
    }
    this_Atom_0=ruleAtom
    { 
        $current = $this_Atom_0.current; 
        afterParserOrEnumRuleCall();
    }

    |((
    {
        $current = forceCreateModelElement(
            grammarAccess.getUnaryExprAccess().getUnaryExprAction_1_0(),
            $current);
    }
)(	otherlv_2='not' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getUnaryExprAccess().getNotKeyword_1_1_0());
    }

    |	otherlv_3='!' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getUnaryExprAccess().getExclamationMarkKeyword_1_1_1());
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getUnaryExprAccess().getExprUnaryExprParserRuleCall_1_2_0()); 
	    }
		lv_expr_4_0=ruleUnaryExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getUnaryExprRule());
	        }
       		set(
       			$current, 
       			"expr",
        		lv_expr_4_0, 
        		"UnaryExpr");
	        afterParserOrEnumRuleCall();
	    }

)
)))
;





// Entry rule entryRuleAtom
entryRuleAtom returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAtomRule()); }
	 iv_ruleAtom=ruleAtom 
	 { $current=$iv_ruleAtom.current; } 
	 EOF 
;

// Rule Atom
ruleAtom returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getAtomAccess().getValueParserRuleCall_0()); 
    }
    this_Value_0=ruleValue
    { 
        $current = $this_Value_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAtomAccess().getWordsParserRuleCall_1()); 
    }
    this_Words_1=ruleWords
    { 
        $current = $this_Words_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAtomAccess().getParenExprParserRuleCall_2()); 
    }
    this_ParenExpr_2=ruleParenExpr
    { 
        $current = $this_ParenExpr_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleValue
entryRuleValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getValueRule()); }
	 iv_ruleValue=ruleValue 
	 { $current=$iv_ruleValue.current; } 
	 EOF 
;

// Rule Value
ruleValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getValueAccess().getProjectReferenceParserRuleCall_0()); 
    }
    this_ProjectReference_0=ruleProjectReference
    { 
        $current = $this_ProjectReference_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getWordParserRuleCall_1()); 
    }
    this_Word_1=ruleWord
    { 
        $current = $this_Word_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getPhraseParserRuleCall_2()); 
    }
    this_Phrase_2=rulePhrase
    { 
        $current = $this_Phrase_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getTagReferenceParserRuleCall_3()); 
    }
    this_TagReference_3=ruleTagReference
    { 
        $current = $this_TagReference_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getTextReferenceParserRuleCall_4()); 
    }
    this_TextReference_4=ruleTextReference
    { 
        $current = $this_TextReference_4.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getTaskReferenceParserRuleCall_5()); 
    }
    this_TaskReference_5=ruleTaskReference
    { 
        $current = $this_TaskReference_5.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleParenExpr
entryRuleParenExpr returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getParenExprRule()); }
	 iv_ruleParenExpr=ruleParenExpr 
	 { $current=$iv_ruleParenExpr.current; } 
	 EOF 
;

// Rule ParenExpr
ruleParenExpr returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='(' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getParenExprAccess().getLeftParenthesisKeyword_0());
    }
(
    {
        $current = forceCreateModelElement(
            grammarAccess.getParenExprAccess().getParenExprAction_1(),
            $current);
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getParenExprAccess().getExprOrExprParserRuleCall_2_0()); 
	    }
		lv_expr_2_0=ruleOrExpr		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getParenExprRule());
	        }
       		set(
       			$current, 
       			"expr",
        		lv_expr_2_0, 
        		"OrExpr");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3=')' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getParenExprAccess().getRightParenthesisKeyword_3());
    }
)
;





// Entry rule entryRuleProjectReference
entryRuleProjectReference returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getProjectReferenceRule()); }
	 iv_ruleProjectReference=ruleProjectReference 
	 { $current=$iv_ruleProjectReference.current; } 
	 EOF 
;

// Rule ProjectReference
ruleProjectReference returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='project' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getProjectReferenceAccess().getProjectKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getProjectReferenceAccess().getColonKeyword_1());
    }
((
(
		lv_value_2_0=RULE_ID
		{
			newLeafNode(lv_value_2_0, grammarAccess.getProjectReferenceAccess().getValueIDTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getProjectReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"ID");
	    }

)
)
    |(
(
		lv_value_3_0=RULE_STRING
		{
			newLeafNode(lv_value_3_0, grammarAccess.getProjectReferenceAccess().getValueSTRINGTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getProjectReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_3_0, 
        		"STRING");
	    }

)
)))
;





// Entry rule entryRuleTaskReference
entryRuleTaskReference returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTaskReferenceRule()); }
	 iv_ruleTaskReference=ruleTaskReference 
	 { $current=$iv_ruleTaskReference.current; } 
	 EOF 
;

// Rule TaskReference
ruleTaskReference returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='task' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTaskReferenceAccess().getTaskKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getTaskReferenceAccess().getColonKeyword_1());
    }
((
(
		lv_value_2_0=RULE_ID
		{
			newLeafNode(lv_value_2_0, grammarAccess.getTaskReferenceAccess().getValueIDTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTaskReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"ID");
	    }

)
)
    |(
(
		lv_value_3_0=RULE_STRING
		{
			newLeafNode(lv_value_3_0, grammarAccess.getTaskReferenceAccess().getValueSTRINGTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTaskReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_3_0, 
        		"STRING");
	    }

)
)))
;





// Entry rule entryRuleTextReference
entryRuleTextReference returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTextReferenceRule()); }
	 iv_ruleTextReference=ruleTextReference 
	 { $current=$iv_ruleTextReference.current; } 
	 EOF 
;

// Rule TextReference
ruleTextReference returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='text' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTextReferenceAccess().getTextKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getTextReferenceAccess().getColonKeyword_1());
    }
((
(
		lv_value_2_0=RULE_ID
		{
			newLeafNode(lv_value_2_0, grammarAccess.getTextReferenceAccess().getValueIDTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTextReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"ID");
	    }

)
)
    |(
(
		lv_value_3_0=RULE_STRING
		{
			newLeafNode(lv_value_3_0, grammarAccess.getTextReferenceAccess().getValueSTRINGTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTextReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_3_0, 
        		"STRING");
	    }

)
)))
;





// Entry rule entryRuleWords
entryRuleWords returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWordsRule()); }
	 iv_ruleWords=ruleWords 
	 { $current=$iv_ruleWords.current; } 
	 EOF 
;

// Rule Words
ruleWords returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_values_0_0=RULE_ID
		{
			newLeafNode(lv_values_0_0, grammarAccess.getWordsAccess().getValuesIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWordsRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"values",
        		lv_values_0_0, 
        		"ID");
	    }

)
)(
(
		lv_values_1_0=RULE_ID
		{
			newLeafNode(lv_values_1_0, grammarAccess.getWordsAccess().getValuesIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWordsRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"values",
        		lv_values_1_0, 
        		"ID");
	    }

)
)+)
;





// Entry rule entryRuleWord
entryRuleWord returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWordRule()); }
	 iv_ruleWord=ruleWord 
	 { $current=$iv_ruleWord.current; } 
	 EOF 
;

// Rule Word
ruleWord returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_ID
		{
			newLeafNode(lv_value_0_0, grammarAccess.getWordAccess().getValueIDTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWordRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"ID");
	    }

)
)
;





// Entry rule entryRulePhrase
entryRulePhrase returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPhraseRule()); }
	 iv_rulePhrase=rulePhrase 
	 { $current=$iv_rulePhrase.current; } 
	 EOF 
;

// Rule Phrase
rulePhrase returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_STRING
		{
			newLeafNode(lv_value_0_0, grammarAccess.getPhraseAccess().getValueSTRINGTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPhraseRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"STRING");
	    }

)
)
;





// Entry rule entryRuleTagReference
entryRuleTagReference returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTagReferenceRule()); }
	 iv_ruleTagReference=ruleTagReference 
	 { $current=$iv_ruleTagReference.current; } 
	 EOF 
;

// Rule TagReference
ruleTagReference returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTagReferenceAccess().getCommercialAtKeyword_0());
    }
(
(
		lv_value_1_0=RULE_ID
		{
			newLeafNode(lv_value_1_0, grammarAccess.getTagReferenceAccess().getValueIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTagReferenceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_1_0, 
        		"ID");
	    }

)
))
;





// Rule CompEqOperator
ruleCompEqOperator returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='=' 
	{
        $current = grammarAccess.getCompEqOperatorAccess().getEQUALEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getCompEqOperatorAccess().getEQUALEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='!=' 
	{
        $current = grammarAccess.getCompEqOperatorAccess().getNOT_EQUALEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getCompEqOperatorAccess().getNOT_EQUALEnumLiteralDeclaration_1()); 
    }
));



// Rule CompOperator
ruleCompOperator returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='<=' 
	{
        $current = grammarAccess.getCompOperatorAccess().getLESS_EQUALEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getCompOperatorAccess().getLESS_EQUALEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='<' 
	{
        $current = grammarAccess.getCompOperatorAccess().getLESSEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getCompOperatorAccess().getLESSEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='>=' 
	{
        $current = grammarAccess.getCompOperatorAccess().getGREATER_EQUALEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getCompOperatorAccess().getGREATER_EQUALEnumLiteralDeclaration_2()); 
    }
)
    |(	enumLiteral_3='>' 
	{
        $current = grammarAccess.getCompOperatorAccess().getGREATEREnumLiteralDeclaration_3().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_3, grammarAccess.getCompOperatorAccess().getGREATEREnumLiteralDeclaration_3()); 
    }
));



RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ID : ~(('@'|'='|'<'|'>'|'!'|'('|')'|':'|' '|'\t'|'\r'|'\n'|'"'|'\''|'&'|'|')) ~((' '|'\t'|'\r'|'\n'|':'))*;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


