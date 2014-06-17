.class public final Lcom/taobao/securityjni/SecretUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IAttachImpl;
.implements Lcom/taobao/securityjni/intelface/ISecretUtil;


# static fields
.field public static final M_API:Ljava/lang/String; = "API"

.field public static final M_DATA:Ljava/lang/String; = "DATA"

.field public static final M_DEV:Ljava/lang/String; = "DEV"

.field public static final M_ECODE:Ljava/lang/String; = "ECODE"

.field public static final M_IMEI:Ljava/lang/String; = "IMEI"

.field public static final M_IMSI:Ljava/lang/String; = "IMSI"

.field public static final M_SSO:Ljava/lang/String; = "SSO"

.field public static final M_TIME:Ljava/lang/String; = "TIME"

.field public static final M_V:Ljava/lang/String; = "V"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/taobao/securityjni/intelface/ISecretUtil;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecretUtil;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/intelface/ISecretUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecretUtil;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    goto :goto_0
.end method


# virtual methods
.method public final AttachImplObject(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/securityjni/intelface/ISecretUtil;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/securityjni/intelface/ISecretUtil;

    iput-object p1, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    :cond_0
    return-void
.end method

.method public final getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLaiwangSign(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getLaiwangSign(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginTopToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/securityjni/SecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMtopSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getMtopSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMtopV4RespSign(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getMtopV4RespSign(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMtopV4Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getMtopV4Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQianNiuSign([B[B)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getQianNiuSign([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p7, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "API"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "V"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMEI"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMSI"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    const-string/jumbo v2, "DATA"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_3

    const-string/jumbo v2, "ECODE"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v2, "TIME"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/securityjni/SecretUtil;->getMtopSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native getTime()Ljava/lang/String;
.end method

.method public final getTopSign(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/securityjni/intelface/ISecretUtil;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
