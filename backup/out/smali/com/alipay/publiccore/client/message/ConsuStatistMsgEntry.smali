.class public Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;


# instance fields
.field public month:Ljava/lang/String;

.field public monthDec:Ljava/lang/String;

.field public monthInc:Ljava/lang/String;

.field public statistDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthDec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->monthDec:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthInc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->monthInc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatistDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->statistDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->month:Ljava/lang/String;

    return-void
.end method

.method public setMonthDec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->monthDec:Ljava/lang/String;

    return-void
.end method

.method public setMonthInc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->monthInc:Ljava/lang/String;

    return-void
.end method

.method public setStatistDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;->statistDesc:Ljava/lang/String;

    return-void
.end method
