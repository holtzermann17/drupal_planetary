-- Some revisions are currently not handled by migrate --
--  tables-into-drupal-pt2.sq

INSERT INTO field_data_field_canonicalname 
  (entity_type, bundle, deleted, entity_id, revision_id, language, delta,
   field_canonicalname_value, field_canonicalname_format)
   SELECT 'node', 'article', 0, node.nid, node.vid, 'und', 0, planetmath_objects.name, NULL
   FROM planetmath_objects,node where node.nid = planetmath_objects.uid;

INSERT INTO field_revision_field_canonicalname
  (entity_type, bundle, deleted, entity_id, revision_id, language, delta,
   field_canonicalname_value, field_canonicalname_format)
   SELECT 'node', 'article', 0, node.nid, node.vid, 'und', 0, planetmath_objects.name, NULL
   FROM planetmath_objects,node where node.nid = planetmath_objects.uid;

INSERT INTO field_data_field_latex
 (entity_type, bundle, deleted, entity_id, revision_id, language, delta, field_latex_preamble, field_latex_document,field_latex_format)
 SELECT 'node','article',0, uid, NULL,'und',0, preamble, data, 'tex_editor'
 FROM planetmath_objects;

INSERT INTO field_data_field_msc
  (entity_type, bundle, deleted, entity_id, revision_id, language, delta, field_msc_value, field_msc_format)
  SELECT 'node','article',0,uid,NULL,'und',0,msc_class,NULL
  FROM planetmath_objects;

INSERT INTO userpoints (uid, points, max_points)
  SELECT entity_id,field_user_score_value,field_user_score_value 
  FROM field_data_field_user_score;

INSERT INTO userpoints_total (uid, points, max_points) 
  SELECT entity_id,field_user_score_value,field_user_score_value
  FROM field_data_field_user_score;

-- request porting seems to give some trouble with custom fields

INSERT INTO field_data_field_question_closed
 (entity_type, bundle, deleted, entity_id, revision_id, language, delta, field_question_closed_value)
 SELECT 'node','question',0, uid, NULL,'und',0,closed
 FROM planetmath_requests;

INSERT INTO field_data_field_question_latex
 (entity_type, bundle, deleted, entity_id, revision_id, language, delta, field_question_latex_document,field_question_latex_format)
 SELECT 'node','question',0, uid, NULL,'und',0,data,'tex_editor'
 FROM planetmath_requests;