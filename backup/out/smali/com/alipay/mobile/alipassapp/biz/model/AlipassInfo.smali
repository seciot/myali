.class public Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
.super Lcom/alipay/mobile/alipassapp/biz/model/f;


# static fields
.field public static final OPERATION_TYPE_APP:Ljava/lang/String; = "app"

.field public static final OPERATION_TYPE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final OPERATION_TYPE_DBARCODE:Ljava/lang/String; = "dbarcode"

.field public static final OPERATION_TYPE_DQRCODE:Ljava/lang/String; = "dqrcode"

.field public static final OPERATION_TYPE_DWAVE:Ljava/lang/String; = "dwave"

.field public static final OPERATION_TYPE_IMG:Ljava/lang/String; = "img"

.field public static final OPERATION_TYPE_QRCODE:Ljava/lang/String; = "qrcode"

.field public static final OPERATION_TYPE_STAMP:Ljava/lang/String; = "stamp"

.field public static final OPERATION_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final OPERATION_TYPE_URL:Ljava/lang/String; = "url"

.field public static final OPERATION_TYPE_WAVE:Ljava/lang/String; = "wave"


# instance fields
.field private appInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

.field private auxiliaryFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field private backFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field private bizType:Ljava/lang/String;

.field private operation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

.field private passFrom:Ljava/lang/String;

.field private passName:Ljava/lang/String;

.field private primaryFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field private remindSupport:Ljava/lang/String;

.field private secondaryFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field private shareSuport:Ljava/lang/String;

.field private trendUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/model/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->trendUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/model/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->trendUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPrimaryFields()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->primaryFields:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getSecondaryFields()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->secondaryFields:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getAuxiliaryFields()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->auxiliaryFields:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getBackFields()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->backFields:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->appInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passFrom:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getRemindSupport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->remindSupport:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getShareSuport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->shareSuport:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getTrendUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->trendUrl:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getOperations()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getOperations()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "format"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;

    invoke-static {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "1"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getFormatVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;->getMessage()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-static {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "1"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getFormatVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "barcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "qrcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "stamp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "url"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "wave"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "dbarcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "dqrcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "dwave"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-static {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "1"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getFormatVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v4, "img"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    invoke-static {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method public static resolveColor(Ljava/lang/String;I)I
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0xa7

    const/16 v6, 0x87

    const/16 v5, 0x32

    const/16 v4, 0xdc

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "\\(.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\(|,|\\)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne p1, v8, :cond_1

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_3
    if-ne p1, v8, :cond_4

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getAppInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->appInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    return-object v0
.end method

.method public getAuxiliaryFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->auxiliaryFields:Ljava/util/List;

    return-object v0
.end method

.method public getBackFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->backFields:Ljava/util/List;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    return-object v0
.end method

.method public getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    return-object v0
.end method

.method public getPassFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->primaryFields:Ljava/util/List;

    return-object v0
.end method

.method public getRemindSupport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->remindSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->secondaryFields:Ljava/util/List;

    return-object v0
.end method

.method public getShareSuport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->shareSuport:Ljava/lang/String;

    return-object v0
.end method

.method public getTrendUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->trendUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->appInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    return-void
.end method

.method public setAuxiliaryFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->auxiliaryFields:Ljava/util/List;

    return-void
.end method

.method public setBackFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->backFields:Ljava/util/List;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->operation:Ljava/util/List;

    return-void
.end method

.method public setPassBaseInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passBaseInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    return-void
.end method

.method public setPassFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passFrom:Ljava/lang/String;

    return-void
.end method

.method public setPassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->passName:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->primaryFields:Ljava/util/List;

    return-void
.end method

.method public setRemindSupport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->remindSupport:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->secondaryFields:Ljava/util/List;

    return-void
.end method

.method public setShareSuport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->shareSuport:Ljava/lang/String;

    return-void
.end method

.method public setTrendUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->trendUrl:Ljava/lang/String;

    return-void
.end method
