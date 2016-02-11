/*
 * generated by Xtext
 */
package org.osate.xtext.aadl2.instance.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.serializer.acceptor.ISemanticSequenceAcceptor;
import org.eclipse.xtext.serializer.diagnostic.ISemanticSequencerDiagnosticProvider;
import org.eclipse.xtext.serializer.diagnostic.ISerializationDiagnostic.Acceptor;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.GenericSequencer;
import org.eclipse.xtext.serializer.sequencer.ISemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService;
import org.osate.aadl2.instance.ComponentInstance;
import org.osate.aadl2.instance.ConnectionInstance;
import org.osate.aadl2.instance.ConnectionReference;
import org.osate.aadl2.instance.FeatureInstance;
import org.osate.aadl2.instance.InstancePackage;
import org.osate.aadl2.instance.SystemInstance;
import org.osate.aadl2.instance.SystemOperationMode;
import org.osate.xtext.aadl2.instance.services.InstanceGrammarAccess;

@SuppressWarnings("all")
public class InstanceSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private InstanceGrammarAccess grammarAccess;
	
	@Override
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == InstancePackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case InstancePackage.COMPONENT_INSTANCE:
				sequence_ComponentInstance(context, (ComponentInstance) semanticObject); 
				return; 
			case InstancePackage.CONNECTION_INSTANCE:
				sequence_ConnectionInstance(context, (ConnectionInstance) semanticObject); 
				return; 
			case InstancePackage.CONNECTION_REFERENCE:
				sequence_ConnectionReference(context, (ConnectionReference) semanticObject); 
				return; 
			case InstancePackage.FEATURE_INSTANCE:
				sequence_FeatureInstance(context, (FeatureInstance) semanticObject); 
				return; 
			case InstancePackage.SYSTEM_INSTANCE:
				sequence_SystemInstance(context, (SystemInstance) semanticObject); 
				return; 
			case InstancePackage.SYSTEM_OPERATION_MODE:
				sequence_SystemOperationMode(context, (SystemOperationMode) semanticObject); 
				return; 
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     (
	 *         category=ComponentCategory 
	 *         name=ID 
	 *         index+=LONG* 
	 *         subcomponent=[Subcomponent|SUBREF] 
	 *         (featureInstance+=FeatureInstance | componentInstance+=ComponentInstance)*
	 *     )
	 */
	protected void sequence_ComponentInstance(EObject context, ComponentInstance semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         complete?='complete'? 
	 *         kind=ConnectionKind 
	 *         name=STRING 
	 *         source=[ConnectionInstanceEnd|INSTANCEREF] 
	 *         bidirectional?='<->'? 
	 *         destination=[ConnectionInstanceEnd|INSTANCEREF] 
	 *         connectionReference+=ConnectionReference+
	 *     )
	 */
	protected void sequence_ConnectionInstance(EObject context, ConnectionInstance semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         source=[ConnectionInstanceEnd|INSTANCEREF] 
	 *         destination=[ConnectionInstanceEnd|INSTANCEREF] 
	 *         connection=[Connection|SUBREF] 
	 *         context=[ComponentInstance|INSTANCEREFWITHPARENT]
	 *     )
	 */
	protected void sequence_ConnectionReference(EObject context, ConnectionReference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         direction=DirectionType 
	 *         category=FeatureCategory 
	 *         name=ID 
	 *         index=LONG? 
	 *         feature=[Feature|FEATREF] 
	 *         (srcConnectionInstance+=[ConnectionInstance|CONNINSTREF] srcConnectionInstance+=[ConnectionInstance|CONNINSTREF]*)? 
	 *         (dstConnectionInstance+=[ConnectionInstance|CONNINSTREF] dstConnectionInstance+=[ConnectionInstance|CONNINSTREF]*)? 
	 *         featureInstance+=FeatureInstance*
	 *     )
	 */
	protected void sequence_FeatureInstance(EObject context, FeatureInstance semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         category=ComponentCategory 
	 *         name=ID 
	 *         componentImplementation=[ComponentImplementation|IMPLREF] 
	 *         (
	 *             featureInstance+=FeatureInstance | 
	 *             componentInstance+=ComponentInstance | 
	 *             connectionInstance+=ConnectionInstance | 
	 *             systemOperationMode+=SystemOperationMode
	 *         )*
	 *     )
	 */
	protected void sequence_SystemInstance(EObject context, SystemInstance semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     name=STRING
	 */
	protected void sequence_SystemOperationMode(EObject context, SystemOperationMode semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
