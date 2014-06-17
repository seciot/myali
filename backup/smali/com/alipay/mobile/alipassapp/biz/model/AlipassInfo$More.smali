.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PAGE_TYPE_1:Ljava/lang/String; = "1"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field appId:Ljava/lang/String;

.field endDate:Ljava/lang/String;

.field first:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;

.field lable:Ljava/lang/String;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field operation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;",
            ">;"
        }
    .end annotation
.end field

.field pageType:Ljava/lang/String;

.field params:Ljava/lang/String;

.field second:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;",
            ">;"
        }
    .end annotation
.end field

.field startDate:Ljava/lang/String;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirst()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->first:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;

    return-object v0
.end method

.method public final getLable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->lable:Ljava/lang/String;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getOperation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->operation:Ljava/util/List;

    return-object v0
.end method

.method public final getPageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->params:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecond()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->second:Ljava/util/List;

    return-object v0
.end method

.method public final getStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->endDate:Ljava/lang/String;

    return-void
.end method

.method public final setFirst(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->first:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;

    return-void
.end method

.method public final setLable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->lable:Ljava/lang/String;

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->list:Ljava/util/List;

    return-void
.end method

.method public final setOperation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->operation:Ljava/util/List;

    return-void
.end method

.method public final setPageType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->pageType:Ljava/lang/String;

    return-void
.end method

.method public final setParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->params:Ljava/lang/String;

    return-void
.end method

.method public final setSecond(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->second:Ljava/util/List;

    return-void
.end method

.method public final setStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->startDate:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->url:Ljava/lang/String;

    return-void
.end method
