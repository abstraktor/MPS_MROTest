<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7edb3fa6-85bc-4800-98d5-7be7edf43f37(MROTest.sandbox.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
  </languages>
  <imports>
    <import index="pbvt" ref="r:c09a86b7-d065-416e-88be-823517ca6185(MROTest.behavior)" />
    <import index="3an5" ref="r:dc3edb9b-9d05-4535-aa45-aa47e0acba48(MROTest.structure)" />
    <import index="9r19" ref="d936855b-48da-4812-a8a0-2bfddd633ac5/java:jetbrains.mps.core.aspects.behaviour.api(jetbrains.mps.lang.behavior.api/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1228228912534" name="jetbrains.mps.baseLanguage.collections.structure.DowncastExpression" flags="nn" index="3S9uib">
        <child id="1228228959951" name="expression" index="3S9DZi" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="2ocTxPshflI">
    <property role="3s_ewP" value="TestMRO" />
    <node concept="3Tm1VV" id="2ocTxPshflJ" role="1B3o_S" />
    <node concept="3s_gsd" id="2ocTxPshflK" role="3s_ewO">
      <node concept="3s$Bmu" id="2ocTxPsorVj" role="3s_gse">
        <property role="3s$Bm0" value="getBehaviorRegistry" />
        <node concept="3cqZAl" id="2ocTxPsorVk" role="3clF45" />
        <node concept="3Tm1VV" id="2ocTxPsorVl" role="1B3o_S" />
        <node concept="3clFbS" id="2ocTxPsorVm" role="3clF47">
          <node concept="2Hmddi" id="2ocTxPsosqc" role="3cqZAp">
            <node concept="2YIFZM" id="2ocTxPsoB8u" role="2Hmdds">
              <ref role="37wK5l" to="pbvt:4oqtX0Ap2zC" resolve="getBehaviorRegistry" />
              <ref role="1Pybhc" to="pbvt:4oqtX0AhaqQ" resolve="MROTestUtil" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2ocTxPshfmD" role="3s_gse">
        <property role="3s$Bm0" value="calculatedMRO" />
        <node concept="3cqZAl" id="2ocTxPshfmE" role="3clF45" />
        <node concept="3Tm1VV" id="2ocTxPshfmF" role="1B3o_S" />
        <node concept="3clFbS" id="2ocTxPshfmG" role="3clF47">
          <node concept="3cpWs8" id="2ocTxPshjhA" role="3cqZAp">
            <node concept="3cpWsn" id="2ocTxPshjhB" role="3cpWs9">
              <property role="TrG5h" value="mro" />
              <node concept="A3Dl8" id="2ocTxPshjhy" role="1tU5fm">
                <node concept="17QB3L" id="2ocTxPshjh_" role="A3Ik2" />
              </node>
              <node concept="2YIFZM" id="2ocTxPshjhC" role="33vP2m">
                <ref role="1Pybhc" to="pbvt:4oqtX0AhaqQ" resolve="MROTestUtil" />
                <ref role="37wK5l" to="pbvt:4oqtX0AkcCq" resolve="mroOf" />
                <node concept="35c_gC" id="2ocTxPshjhD" role="37wK5m">
                  <ref role="35c_gD" to="3an5:4oqtX0AfoGf" resolve="Z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2ocTxPshjv3" role="3cqZAp">
            <node concept="2OqwBi" id="2ocTxPsp2k0" role="3tpDZB">
              <node concept="3S9uib" id="2ocTxPsp2c_" role="2Oq$k0">
                <node concept="37vLTw" id="2ocTxPshj$I" role="3S9DZi">
                  <ref role="3cqZAo" node="2ocTxPshjhB" resolve="mro" />
                </node>
              </node>
              <node concept="liA8E" id="2ocTxPsp8Ut" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
            <node concept="Xl_RD" id="2ocTxPshj_c" role="3tpDZA">
              <property role="Xl_RC" value="[Z, Z_Super, Z_SuperSuper, K1, K2, K3, D, A, B, C, E, O, BaseInterface, BaseConcept]" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2ocTxPshjC0" role="3s_gse">
        <property role="3s$Bm0" value="superChainOfZ" />
        <node concept="3cqZAl" id="2ocTxPshjC1" role="3clF45" />
        <node concept="3Tm1VV" id="2ocTxPshjC2" role="1B3o_S" />
        <node concept="3clFbS" id="2ocTxPshjC3" role="3clF47">
          <node concept="3cpWs8" id="2ocTxPshjWF" role="3cqZAp">
            <node concept="3cpWsn" id="2ocTxPshjWG" role="3cpWs9">
              <property role="TrG5h" value="interfacePresentation" />
              <node concept="17QB3L" id="2ocTxPshjWD" role="1tU5fm" />
              <node concept="2OqwBi" id="2ocTxPshjWH" role="33vP2m">
                <node concept="2pJPEk" id="2ocTxPshjWI" role="2Oq$k0">
                  <node concept="2pJPED" id="2ocTxPshjWJ" role="2pJPEn">
                    <ref role="2pJxaS" to="3an5:4oqtX0AfoGf" resolve="Z" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2ocTxPshjWK" role="2OqNvi">
                  <ref role="37wK5l" to="pbvt:4oqtX0AlSp9" resolve="getInterfacePresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ocTxPshjIE" role="3cqZAp" />
          <node concept="3vlDli" id="2ocTxPshjFJ" role="3cqZAp">
            <node concept="37vLTw" id="2ocTxPshldD" role="3tpDZB">
              <ref role="3cqZAo" node="2ocTxPshjWG" resolve="interfacePresentation" />
            </node>
            <node concept="Xl_RD" id="2ocTxPshlmg" role="3tpDZA">
              <property role="Xl_RC" value="Z, Z_Super, Z_SuperSuper, BaseInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2ocTxPshluO" role="3s_gse">
        <property role="3s$Bm0" value="superChainOfZWithoutSuper" />
        <node concept="3cqZAl" id="2ocTxPshluP" role="3clF45" />
        <node concept="3Tm1VV" id="2ocTxPshluQ" role="1B3o_S" />
        <node concept="3clFbS" id="2ocTxPshluR" role="3clF47">
          <node concept="3cpWs8" id="2ocTxPshluS" role="3cqZAp">
            <node concept="3cpWsn" id="2ocTxPshluT" role="3cpWs9">
              <property role="TrG5h" value="interfacePresentation" />
              <node concept="17QB3L" id="2ocTxPshluU" role="1tU5fm" />
              <node concept="2OqwBi" id="2ocTxPshluV" role="33vP2m">
                <node concept="2pJPEk" id="2ocTxPshluW" role="2Oq$k0">
                  <node concept="2pJPED" id="2ocTxPshm78" role="2pJPEn">
                    <ref role="2pJxaS" to="3an5:4oqtX0Ay7RY" resolve="Z_WithoutSuper" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2ocTxPshluY" role="2OqNvi">
                  <ref role="37wK5l" to="pbvt:4oqtX0AlSp9" resolve="getInterfacePresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ocTxPshluZ" role="3cqZAp" />
          <node concept="3vlDli" id="2ocTxPshlv0" role="3cqZAp">
            <node concept="37vLTw" id="2ocTxPshlv1" role="3tpDZB">
              <ref role="3cqZAo" node="2ocTxPshluT" resolve="interfacePresentation" />
            </node>
            <node concept="Xl_RD" id="2ocTxPshlv2" role="3tpDZA">
              <property role="Xl_RC" value="Z_WithoutSuper, K1, A, O, BaseInterface" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="2ocTxPshn0H">
    <property role="2XOHcw" value="." />
  </node>
</model>

