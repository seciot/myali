.class final Lcom/aps/af;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private synthetic a:Lcom/aps/ac;


# direct methods
.method private constructor <init>(Lcom/aps/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/ac;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/af;-><init>(Lcom/aps/ac;)V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aps/ac;->b(Lcom/aps/ac;J)J

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0, p1}, Lcom/aps/ac;->a(Lcom/aps/ac;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/aps/ac;->b(Lcom/aps/ac;Z)Z

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v1

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/aps/ac;->a(Lcom/aps/ac;I)I

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    iget-object v2, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v2}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/aps/ac;->b(Lcom/aps/ac;I)I

    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v1}, Lcom/aps/ac;->i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0, v1}, Lcom/aps/ac;->b(Lcom/aps/ac;Z)Z

    goto :goto_2
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->j(Lcom/aps/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/ac;->c(Lcom/aps/ac;I)I

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/ac;->c(Lcom/aps/ac;I)I

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->k(Lcom/aps/ac;)I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/aps/ac;->c(Lcom/aps/ac;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    iget-object v1, p0, Lcom/aps/af;->a:Lcom/aps/ac;

    invoke-static {v1}, Lcom/aps/ac;->k(Lcom/aps/ac;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    invoke-static {v0, v1}, Lcom/aps/ac;->c(Lcom/aps/ac;I)I

    goto :goto_0
.end method
