.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;
.super Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;


# static fields
.field private static final serialVersionUID:J = 0x4288c99c91fda773L


# instance fields
.field message:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;->message:Ljava/util/List;

    return-object v0
.end method

.method public final setMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;->message:Ljava/util/List;

    return-void
.end method
