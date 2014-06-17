.class public Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;
.super Ljava/lang/Object;


# instance fields
.field public channelPak:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public pageNum:I

.field public pageSize:I

.field public terminal:Ljava/lang/String;

.field public terminalId:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelPak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->channelPak:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->pageSize:I

    return v0
.end method

.method public getTerminal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->terminal:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelPak(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->channelPak:Ljava/lang/String;

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->pageSize:I

    return-void
.end method

.method public setTerminal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->terminal:Ljava/lang/String;

    return-void
.end method

.method public setTerminalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->terminalId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/CommonTodoQueryRequest;->version:Ljava/lang/String;

    return-void
.end method
