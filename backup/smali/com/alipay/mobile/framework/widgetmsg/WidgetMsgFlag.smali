.class public Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;


# static fields
.field protected static MSG_STYLE_NEW:I

.field protected static MSG_STYLE_NUM:I

.field protected static MSG_STYLE_POINT:I

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Z

.field private g:Z

.field protected mDescendantCount:I

.field protected mMsgStyle:I

.field protected mPersistenceMsgCount:I

.field protected mTemporaryMsgCount:I

.field protected maxCount:I

.field protected widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    const-string/jumbo v0, "point"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->a:Ljava/lang/String;

    const-string/jumbo v0, "new"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->b:Ljava/lang/String;

    const-string/jumbo v0, "num"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v5, 0x63

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    iput-boolean v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Z

    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    iput-boolean v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    iput v5, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->widget_msg_flag_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->widgetMsgFlag:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->widgetMsgBg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->widgetMsgText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method


# virtual methods
.method public ackClick()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "WidgetMsgFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackClick,id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->removeWidgetMsg(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->cachedTaskIdAndMsgIdRequestUpdateWidgetMsg(Ljava/lang/String;)V

    :cond_0
    iput v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iput v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    return-void
.end method

.method protected calculateMsgCount(III)I
    .locals 1

    add-int v0, p1, p2

    add-int/2addr v0, p3

    return v0
.end method

.method public clearBindingWidget(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    return-void
.end method

.method public clearBindingWidget(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    :cond_0
    return-void
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public hideMsgFlag()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    return-void
.end method

.method protected refreshMsgFlag()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Z

    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    return-void
.end method

.method public setBindingWidget(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->registerWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    goto :goto_0
.end method

.method public setMsgCount(III)V
    .locals 3

    const-string/jumbo v0, "WidgetMsgFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMsgCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p1, p2

    add-int/2addr v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iput p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    iput p3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    return-void
.end method

.method public setMsgStyle(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    goto :goto_0
.end method

.method public setNeedAck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Z

    return-void
.end method

.method public showMsgFlag()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->redpoint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    return-void
.end method

.method public showMsgFlag(I)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    iget v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_more_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMsgFlag(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_flag_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_txt_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showMsgFlagNew()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_new_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    return-void
.end method
