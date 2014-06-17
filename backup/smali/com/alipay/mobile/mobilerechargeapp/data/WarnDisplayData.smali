.class public Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_LIST_SIZE:I = 0x0

.field private static final serialVersionUID:J = 0xf0da4L


# instance fields
.field private isBindName:Z

.field public mAddSwitch:Z

.field public mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

.field private mBindNum:Ljava/lang/String;

.field private mComtext:Landroid/content/Context;

.field private mContactList:Ljava/util/ArrayList;

.field public mDataList:Ljava/util/ArrayList;

.field private mDisPlayAddSwitch:Z

.field private mMaxListSize:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAddSwitch:Z

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mBindNum:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDisPlayAddSwitch:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->isBindName:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mContactList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->addSwitch:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAddSwitch:Z

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->maxListSize:I

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mComtext:Landroid/content/Context;

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    if-gtz v0, :cond_1

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    :cond_1
    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mBindNum:Ljava/lang/String;

    return-void
.end method

.method private addListData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v5, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    const-string/jumbo v6, ""

    move v2, v3

    move v1, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v7, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    if-ge v0, v7, :cond_3

    new-instance v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v7}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->mobileNo:Ljava/lang/String;

    iput-object v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "temp.phoneNum = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget v0, v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->signStatus:I

    iput v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iget-object v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget-boolean v0, v0, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->valid:Z

    iput-boolean v0, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->e:Z

    iput-boolean v3, v7, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    if-ne v0, v1, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    move-object v0, v4

    goto/16 :goto_0
.end method

.method private addSelfData()Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mComtext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->u:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    iget-object v3, v1, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->mobileNo:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mBindNum:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mBindNum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mBindNum:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->mobileNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    :cond_2
    :goto_1
    iget v2, v1, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->signStatus:I

    iput v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iget-boolean v1, v1, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->valid:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    goto :goto_0

    :cond_3
    iput-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private addSwitch()Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDisPlayAddSwitch:Z

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-boolean v1, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->addSwitch:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v1, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v1, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    if-ge v1, v2, :cond_0

    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDisPlayAddSwitch:Z

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    iput-boolean v4, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->g:Z

    iput-boolean v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    goto :goto_0
.end method

.method private getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mContactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mComtext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mComtext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->isBindName:Z

    const-string/jumbo p2, ""

    goto :goto_0

    :cond_3
    iget-object p2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDataNewF()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->isBindName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->h:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getAddSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAddSwitch:Z

    return v0
.end method

.method public getDisplayData()Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->startGenerateData()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxListSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mMaxListSize:I

    return v0
.end method

.method public getSignQueryResListSize()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->alertSignList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayAddSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDisPlayAddSwitch:Z

    return v0
.end method

.method public setContactList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mContactList:Ljava/util/ArrayList;

    return-void
.end method

.method public startGenerateData()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mAlertSignQueryRes:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->isBindName:Z

    const-string/jumbo v0, ""

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->addSelfData()Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->addListData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->setDataNewF()V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->addSwitch()Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
