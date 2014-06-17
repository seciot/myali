.class final Lcom/alipay/mobile/alipassapp/viewcontrol/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-direct {v1, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->a(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->d:Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getSecondaryFields()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/r;->c:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;->b(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    return-void
.end method
