.class public Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
.super Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;


# static fields
.field protected static MSG_STYLE_LABLE:I

.field public static MSG_WIDGET_TYPE_SDK:I

.field public static MSG_WIDGET_TYPE_TAG:I

.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_SDK:I

    const/4 v0, 0x3

    sput v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_LABLE:I

    const-string/jumbo v0, "lable"

    sput-object v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v8

    move v5, v8

    move v6, v8

    move v7, v8

    move v2, v8

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_b

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    iget-object v1, v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    move v2, v3

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()I

    move-result v11

    if-ne v11, v3, :cond_1

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move-result v7

    add-int/2addr v4, v7

    move v7, v3

    :cond_1
    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    move v6, v3

    :cond_2
    if-nez v5, :cond_b

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v4

    move v5, v7

    move v4, v6

    move v6, v2

    move v2, v3

    :goto_1
    move v7, v5

    move v5, v2

    move v2, v6

    move v6, v4

    move v4, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "EMPTY"

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->concatenate([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_2
    if-nez v2, :cond_4

    if-nez v7, :cond_4

    if-nez v6, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v5, v3

    :goto_3
    if-eqz v7, :cond_6

    const-string/jumbo v0, "num"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Z

    iput-object v9, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    if-eqz v5, :cond_9

    invoke-direct {p0, v3, v9}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    iput-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Z

    return-void

    :cond_5
    move v5, v8

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    const-string/jumbo v0, "new"

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    const-string/jumbo v0, "lable"

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "point"

    goto :goto_4

    :cond_9
    move v3, v8

    goto :goto_5

    :cond_a
    move-object v9, v0

    goto :goto_2

    :cond_b
    move v0, v4

    move v4, v6

    move v6, v2

    move v2, v5

    move v5, v7

    goto :goto_1
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/AssetRedpointCacheUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I
    .locals 1

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_POINT:I

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I
    .locals 1

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_NUM:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I
    .locals 1

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_NEW:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I
    .locals 1

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ackClick()V
    .locals 2

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetRedpointCacheUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->ackClick()V

    goto :goto_0
.end method

.method public addChild(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setParent(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    :cond_0
    return-void
.end method

.method public getMsgStyle()I
    .locals 1

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    return v0
.end method

.method public getShowNum()I
    .locals 3

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mTemporaryMsgCount:I

    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mPersistenceMsgCount:I

    iget v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->calculateMsgCount(III)I

    move-result v0

    goto :goto_0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHideFlag()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v3, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move-result v2

    iget-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Z

    iget-object v4, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    sget v3, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_NUM:I

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mTemporaryMsgCount:I

    iget v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mPersistenceMsgCount:I

    iget v4, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->calculateMsgCount(III)I

    move-result v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public refreshMsgFlag()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(Ljava/util/List;)V

    :cond_0
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/alipay/asset/common/view/a;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/view/a;-><init>(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WidgetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mTemporaryMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mPersistenceMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    if-ne v0, v1, :cond_0

    iput-object v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Z

    iput-boolean v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Z

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    goto :goto_0
.end method

.method public setBindingWidget(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsgCount(III)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgCount(III)V

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    :cond_0
    return-void
.end method

.method public setMsgData(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_WIDGET_TYPE_TAG:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    iput-boolean p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Z

    iput-boolean p2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Z

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    return-void
.end method

.method public setMsgStyle(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_LABLE:I

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParent(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-void
.end method

.method public setWidgetType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:I

    return-void
.end method
