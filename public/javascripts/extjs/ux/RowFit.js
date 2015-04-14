Ext.namespace('Ext.ux.layout');

Ext.ux.layout.RowFitLayout = Ext.extend(Ext.layout.ContainerLayout, {
	onLayout : function(ct, target) {
		Ext.ux.layout.RowFitLayout.superclass.onLayout.call(this, ct, target);
		if (this.container.collapsed || !ct.items || !ct.items.length) {
			return;
		}
		this.calSize(ct, target);
	},
	calSum : function(ct,calHEls) {
		var absHSum = 0, percHSum = 0, noHCount = 0, type, percH;
		for (var i = 0, n = ct.items.length;i < n; i++) {
			var c = ct.items.itemAt(i);
			var perc = typeof c.height == "string" && c.height.indexOf("%");
			c.height ? (perc ? type = 1 : type = 2) : type = 0;
			switch (type) {
				case 0 :
					noHCount++;
					calHEls.push(c);
					break;
				case 1 :
					percH = parseInt(c.height);
					c.percH = percH;
					percHSum += percH;
					calHEls.push(c);
					break;
				case 2 :
					absHSum += c.height;
					break;
			}
		}
		return [absHSum, percHSum, noHCount];
	},
	 getAnchorViewSize : function(ct, target){
        return target.dom == document.body ?
                   target.getViewSize() : target.getStyleSize();
    },
	calSize : function(ct, target) {
		var percHRat, calHEls = [], calSum = this.calSum(ct,calHEls);
		var absHSum = calSum[0], percHSum = calSum[1], noHCount = calSum[2];
		(noHCount == 0 && percHSum != 100) ? percHRat = 100 / percHSum : percHRat=1;
		var freeH = this.getAnchorViewSize(ct,target).height - absHSum;/*this.getAnchorViewSize(ct,target)*/
		var percH, absH = 0, len = calHEls.length;
		for (var i = 0;i < len; i++) {
			percH = calHEls[i].percH * percHRat;
			!percH ? percH = (100 - percHSum) / noHCount : "";
			absH = Math.round(freeH * percH
					/ 100);
			absH < 0 ? absH = 0 : '';
			calHEls[i].setHeight(absH);
			//absHLeft -= absH;
		}
	}
});

Ext.Container.LAYOUTS['row'] = Ext.ux.layout.RowFitLayout;