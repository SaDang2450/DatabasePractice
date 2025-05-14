SELECT * FROM `score`;

SELECT * FROM `score` LIMIT 10;

SELECT * FROM `score` ORDER BY `score` DESC;

SELECT * FROM `score` WHERE `year`=2020 AND `semester`=1 AND `term`='기말고사' AND `subject`='국어' ORDER BY `score` DESC;

SELECT concat(`year`,'년',`semester`,'학기',`term`,' ',`name`,' - ',`subject`,`score`,'점') AS `score_info` FROM `score`;