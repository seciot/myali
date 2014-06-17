.class public Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;
.super Lcom/alipay/mobile/alipassapp/viewcontrol/a;


# instance fields
.field e:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

.field f:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

.field g:Landroid/view/ViewGroup;

.field h:Lcom/alipay/mobile/commonui/widget/APImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/alipay/mobile/alipassapp/viewcontrol/k;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/viewcontrol/s;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/s;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_primary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->e:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_secondary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->f:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_strip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAuxiliaryFields()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->a()Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getStrip()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->layout_center:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/alipassapp/viewcontrol/r;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alipay/mobile/alipassapp/viewcontrol/r;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAuxiliaryFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAuxiliaryFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->a()Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    move v1, v3

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected final a(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->e:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;->refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method

.method protected final b(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->f:Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/alipassapp/ui/common/EventTicketPrimaryFieldLayout;->refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method
