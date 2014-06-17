.class public Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->B:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->C:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->D:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    iget-object v2, p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    iget-object v2, p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->compareTo(Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getE()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    return-object v0
.end method

.method public getPhoneNumberWithName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    return-void
.end method

.method public setB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->B:Ljava/lang/String;

    return-void
.end method

.method public setC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->C:Ljava/lang/String;

    return-void
.end method

.method public setD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public setE(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "phoneNumber:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",rechargeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",facePrice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",rechargeDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd hh:mm:ss"

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->E:Ljava/util/Date;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
