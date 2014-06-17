.class final Lcom/alipay/mobile/onsitepay/phoneblacklist/a;
.super Ljava/lang/Object;
.source "PhoneBlackListImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/a;->a:Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/phoneblacklist/a;-><init>(Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/a;->a:Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->a()V

    .line 47
    return-void
.end method
