.class final Lcom/alipay/mobile/mobilerechargeapp/history/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/history/a;->a:Lcom/alipay/mobile/mobilerechargeapp/history/ListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
