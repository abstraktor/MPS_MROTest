<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dc3edb9b-9d05-4535-aa45-aa47e0acba48(MROTest.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="4oqtX0AfoFe">
    <property role="EcuMT" value="5051481667927902926" />
    <property role="TrG5h" value="A" />
    <node concept="PrWs8" id="4oqtX0AkZbu" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFf" resolve="O" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoFf">
    <property role="EcuMT" value="5051481667927902927" />
    <property role="TrG5h" value="O" />
    <node concept="PrWs8" id="4oqtX0AkZbx" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AkExA" resolve="BaseInterface" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoFg">
    <property role="EcuMT" value="5051481667927902928" />
    <property role="TrG5h" value="C" />
    <node concept="PrWs8" id="4oqtX0AfoFk" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFf" resolve="O" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoFh">
    <property role="EcuMT" value="5051481667927902929" />
    <property role="TrG5h" value="B" />
    <node concept="PrWs8" id="4oqtX0AfoFi" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFf" resolve="O" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoFm">
    <property role="EcuMT" value="5051481667927902934" />
    <property role="TrG5h" value="D" />
    <node concept="PrWs8" id="4oqtX0AfoFs" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFf" resolve="O" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoFo">
    <property role="EcuMT" value="5051481667927902936" />
    <property role="TrG5h" value="E" />
    <node concept="PrWs8" id="4oqtX0AfoFu" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFf" resolve="O" />
    </node>
  </node>
  <node concept="1TIwiD" id="4oqtX0AfoGf">
    <property role="EcuMT" value="5051481667927902991" />
    <property role="TrG5h" value="Z" />
    <ref role="1TJDcQ" node="4oqtX0AfoHa" resolve="Z_Super" />
    <node concept="PrWs8" id="4oqtX0AfoHb" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoGq" resolve="K1" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoHg" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoGH" resolve="K2" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoHo" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoH0" resolve="K3" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoGq">
    <property role="EcuMT" value="5051481667927903002" />
    <property role="TrG5h" value="K1" />
    <node concept="PrWs8" id="4oqtX0AfoGr" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFe" resolve="A" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoGw" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFh" resolve="B" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoGC" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFg" resolve="C" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoGH">
    <property role="EcuMT" value="5051481667927903021" />
    <property role="TrG5h" value="K2" />
    <node concept="PrWs8" id="4oqtX0AfoGI" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFm" resolve="D" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoGN" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFh" resolve="B" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoGV" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFo" resolve="E" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AfoH0">
    <property role="EcuMT" value="5051481667927903040" />
    <property role="TrG5h" value="K3" />
    <node concept="PrWs8" id="4oqtX0AfoH1" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFm" resolve="D" />
    </node>
    <node concept="PrWs8" id="4oqtX0AfoH6" role="PrDN$">
      <ref role="PrY4T" node="4oqtX0AfoFe" resolve="A" />
    </node>
  </node>
  <node concept="1TIwiD" id="4oqtX0AfoHa">
    <property role="EcuMT" value="5051481667927903050" />
    <property role="TrG5h" value="Z_Super" />
    <ref role="1TJDcQ" node="4oqtX0A$7L0" resolve="Z_SuperSuper" />
    <node concept="PrWs8" id="4oqtX0AmuvX" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AkExA" resolve="BaseInterface" />
    </node>
  </node>
  <node concept="PlHQZ" id="4oqtX0AkExA">
    <property role="EcuMT" value="5051481667929286758" />
    <property role="TrG5h" value="BaseInterface" />
  </node>
  <node concept="1TIwiD" id="4oqtX0Ay7RY">
    <property role="EcuMT" value="5051481667932814846" />
    <property role="TrG5h" value="Z_WithoutSuper" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4oqtX0Ay7RZ" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoGq" resolve="K1" />
    </node>
    <node concept="PrWs8" id="4oqtX0Ay7S0" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoGH" resolve="K2" />
    </node>
    <node concept="PrWs8" id="4oqtX0Ay7S1" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AfoH0" resolve="K3" />
    </node>
  </node>
  <node concept="1TIwiD" id="4oqtX0A$7L0">
    <property role="EcuMT" value="5051481667933338688" />
    <property role="TrG5h" value="Z_SuperSuper" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4oqtX0A$7L1" role="PzmwI">
      <ref role="PrY4T" node="4oqtX0AkExA" resolve="BaseInterface" />
    </node>
  </node>
</model>

