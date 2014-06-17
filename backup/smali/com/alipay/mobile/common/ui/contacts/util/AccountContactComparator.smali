.class public Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;)I
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;->getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;->getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    check-cast p2, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;->compare(Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;)I

    move-result v0

    return v0
.end method

.method protected getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "~"

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getFullPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->isStartWithAlphabet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "~"

    goto :goto_0
.end method
