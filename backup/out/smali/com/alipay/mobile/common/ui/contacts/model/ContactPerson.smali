.class public Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public enabledStatus:Ljava/lang/String;

.field public isAppUser:Z

.field public isBindInfo:Z

.field public isNumberMatch:Z

.field public isSearch:Z

.field public matchedEndIndex:I

.field public matchedEndIndex4Phone:I

.field public matchedNum:Ljava/lang/String;

.field public matchedPinYin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public matchedStartIndex:I

.field public matchedStartIndex4Phone:I

.field public matchedWord:Ljava/lang/String;

.field public mobileNumber:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNum:Ljava/lang/String;

.field public phoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public searchedWord:Ljava/lang/String;

.field public sortKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->enabledStatus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedNum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v5, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v0, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    iget v1, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x4e00

    if-lt p2, v1, :cond_2

    const v1, 0x9fbb

    if-gt p2, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_6

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;)V

    iget v1, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->priority:I

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v4, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, p0, v4, v5, v2}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    iput-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p2, :cond_4

    new-instance v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    invoke-direct {v6, p0, v4}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;)V

    iget v7, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->priority:I

    new-instance v7, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v8, v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, p0, v8, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    iput-object v7, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    iget-object v7, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move-object v0, v3

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    invoke-direct {p0, v1, v6}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v8, v1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v0, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->pinyinPos:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    iget v9, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v9, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->pinyinPos:I

    aget-object v0, v0, v9

    iget v9, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->char4PinyinPos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget v9, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->char4PinyinPos:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;)V

    iget v9, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->priority:I

    new-instance v9, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v10, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    iget v11, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->pinyinPos:I

    iget v8, v8, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->char4PinyinPos:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v9, p0, v10, v11, v8}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    iput-object v9, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    iget-object v8, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    move-object p1, v4

    :goto_3
    return-object p1

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object p1, v3

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(Ljava/util/List;)V

    goto :goto_3
.end method

.method private a(ILcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    iget-object v2, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v2, v2, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iget v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    iget v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFirstChars()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public initSearchInfo()V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/common/ui/contacts/util/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-array v3, v1, [Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a([Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    invoke-direct {v3, p0, v0, v6, v1}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(ILcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a([Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    invoke-direct {v4, p0, v0, v6, v1}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(ILcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;)V

    move v2, v1

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-instance v5, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(ILcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isNameMatch(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v4, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    new-instance v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;

    invoke-direct {v6, p0, v7}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;)V

    iput-object v0, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iput-object v7, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->isFirstChar:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isPhoneNumberMatch(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    iput v2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isSearch:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->phoneNumber:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedPinYin:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->enabledStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
