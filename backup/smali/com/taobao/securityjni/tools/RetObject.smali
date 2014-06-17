.class public Lcom/taobao/securityjni/tools/RetObject;
.super Ljava/lang/Object;


# instance fields
.field public errorCode:I

.field public extraData:I

.field public functionName:[B

.field public reservedData:I

.field public rightData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    iput-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->functionName:[B

    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->extraData:I

    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->reservedData:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RetObject [rightData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", functionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->functionName:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/securityjni/tools/RetObject;->extraData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reservedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/securityjni/tools/RetObject;->reservedData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
