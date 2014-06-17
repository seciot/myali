.class Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch$ComparatorMatchedContact;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch$ComparatorMatchedContact;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)I
    .locals 3

    iget-object v0, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p2, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p2, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    check-cast p2, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch$ComparatorMatchedContact;->compare(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)I

    move-result v0

    return v0
.end method
