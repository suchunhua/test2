var abo = {
		init:function(params){
			//合并表格中的单元格
			autoMergeCells._w_table_rowspan(".title-garden-table",1);
			autoMergeCells._w_table_rowspan(".title-garden-table",2);
		}
}
$(function(){
	abo.init({});
});