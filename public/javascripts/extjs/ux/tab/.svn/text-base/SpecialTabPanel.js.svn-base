Ext.ns("Ext.ux");
Ext.ux.SpecialTabPanel = function(cfg) {
  if (cfg.tabPosition == 'left' || cfg.tabPosition == 'right') {
    cfg.cls = cfg.cls || '';
    cfg.cls = 'ux-vertical-tabs ' + cfg.cls;
    if (cfg.textAlign && cfg.textAlign == 'right') {
      cfg.cls = 'ux-vertical-tabs-alignright ' + cfg.cls;
    }
    cfg.cls = (cfg.tabPosition == 'left' ? 'ux-vertical-tabs-left ' : 'ux-vertical-tabs-right ') + cfg.cls;
    this.intendedTabPosition = cfg.tabPosition;
    this.verticalTabs = true;
    cfg.tabPosition = 'top';
  }
  Ext.ux.SpecialTabPanel.superclass.constructor.call(this, cfg);
};

Ext.extend(Ext.ux.SpecialTabPanel, Ext.TabPanel, {
//添加一个tabwidth属性
  tabWidth : 150,
  afterRender : function() {
    Ext.ux.SpecialTabPanel.superclass.afterRender.call(this);
    if (this.verticalTabs) {
      this.header.setWidth(this.tabWidth);
      this.header.setHeight(this.height || this.container.getHeight());
    }
  },
  adjustBodyWidth : function(w) {
    if (this.verticalTabs) {
      if (Ext.isIE6) {
        this.bwrap.setWidth(w );
      }
      return w;
    }
    else {
      return Ext.ux.SpecialTabPanel.superclass.adjustBodyWidth.call(this, w);
    }
  },
  adjustBodyHeight : function(h) {
    if (this.verticalTabs) {
      this.header.setHeight(h + (this.tbar ? this.tbar.getHeight() : 0));
    }
    return Ext.ux.SpecialTabPanel.superclass.adjustBodyHeight.call(this, h);
  },

  getFrameWidth : function() {
    return Ext.ux.SpecialTabPanel.superclass.getFrameWidth.call(this) + this.verticalTabs ? this.tabWidth : 0;
  },
  getFrameHeight : function() {
    return Ext.ux.SpecialTabPanel.superclass.getFrameHeight.call(this) - (this.verticalTabs ? this.header.getHeight() : 0);
  }
});