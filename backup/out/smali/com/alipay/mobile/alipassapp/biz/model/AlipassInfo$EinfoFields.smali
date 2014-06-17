.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_OPENNATIVE:Ljava/lang/String; = "openNative"

.field public static final TYPE_OPENSCHEMA:Ljava/lang/String; = "openSchema"

.field public static final TYPE_OPENWEB:Ljava/lang/String; = "openWeb"


# instance fields
.field icon:Ljava/lang/String;

.field key:Ljava/lang/String;

.field label:Ljava/lang/String;

.field more:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->more:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->key:Ljava/lang/String;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->label:Ljava/lang/String;

    return-void
.end method

.method public final setMore(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->more:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->type:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->value:Ljava/lang/String;

    return-void
.end method
