# Property Management System

This directory contains a comprehensive property management system built with innovative Cubit architecture and state management. The system is logically segregated into specialized managers that handle different aspects of property management.

## 🏗️ Architecture Overview

The property management system follows a clean, modular architecture with four specialized managers:

### 1. **PropertyListingManager** (`property.listing.dart`)
**Purpose**: Handles property browsing, searching, and filtering
- **State**: `PropertyListingState`
- **Features**:
  - Load all properties with optional filters
  - Search properties by query (title, owner, location)
  - Filter by type, status, and location
  - Separate views for pending/approved properties
  - Computed properties for analytics
  - Real-time search and filtering

**Key Methods**:
- `loadProperties()` - Load all properties with filters
- `searchProperties(String query)` - Search functionality
- `applyFilters()` - Apply multiple filters
- `loadPendingProperties()` - Load pending approvals
- `loadApprovedProperties()` - Load approved properties

### 2. **PropertyActionManager** (`property.action.dart`)
**Purpose**: Handles CRUD operations on properties
- **State**: `PropertyActionState`
- **Features**:
  - Create new properties
  - Update existing properties
  - Delete properties
  - Action tracking and status management
  - Success/error message handling

**Key Methods**:
- `createProperty()` - Create new property
- `updateProperty()` - Update existing property
- `deleteProperty()` - Delete property
- `clearMessages()` - Clear status messages

### 3. **PropertyApprovalManager** (`property.approval.dart`)
**Purpose**: Handles approval workflows for revenue officers
- **State**: `PropertyApprovalState`
- **Features**:
  - Approve/reject individual properties
  - Bulk approval/rejection with queues
  - High-value property detection
  - Recent submissions tracking
  - Approval analytics and metrics

**Key Methods**:
- `approveProperty()` - Approve single property
- `rejectProperty()` - Reject single property
- `addToApprovalQueue()` - Queue for bulk approval
- `processApprovalQueue()` - Process bulk approvals
- `loadPendingProperties()` - Load pending approvals

### 4. **PropertyAssignmentManager** (`property.assignment.dart`)
**Purpose**: Handles officer assignment workflows
- **State**: `PropertyAssignmentState`
- **Features**:
  - Assign properties to officers
  - Unassign and reassign properties
  - Bulk assignment operations
  - Officer workload tracking
  - Assignment analytics

**Key Methods**:
- `assignProperty()` - Assign to officer
- `unassignProperty()` - Remove assignment
- `reassignProperty()` - Change officer assignment
- `processAssignmentQueue()` - Bulk assignments
- `getOfficerWorkload()` - Track officer capacity

## 🎯 Innovative Features

### 1. **Smart State Management**
Each manager maintains its own specialized state with computed properties for real-time analytics:

```dart
// Example: PropertyListingState computed properties
List<Property> get filteredProperties => // Real-time filtering
int get totalProperties => properties.length;
double get averagePropertyValue => // Automatic calculations
```

### 2. **Queue-Based Bulk Operations**
Advanced queue system for bulk approvals and assignments:

```dart
// Approval queues
final List<String> approvalQueue;
final List<String> rejectionQueue;

// Assignment queues
final Map<String, String> assignmentQueue; // propertyGuid -> officerGuid
```

### 3. **Analytics & Insights**
Built-in analytics for business intelligence:

```dart
// Property insights
List<Property> get highValueProperties;
List<Property> get recentSubmissions;
Map<String, List<Property>> get propertiesByOfficer;
```

### 4. **Error Handling & User Feedback**
Comprehensive error handling with user-friendly messaging:

```dart
final String? errorMessage;
final String? successMessage;
final PropertyAction? lastAction; // Track what action caused the state change
```

## 📊 State Structure

Each manager follows a consistent state pattern:

```dart
@MappableClass()
class PropertyXXXState with PropertyXXXStateMappable {
  const PropertyXXXState({
    this.loading = false,        // Loading indicator
    this.errorMessage,           // Error feedback
    this.successMessage,         // Success feedback
    // Specific state data...
  });
  
  // Computed properties for real-time calculations
  List<Property> get someComputedProperty => ...;
}
```

## 🔄 Usage Patterns

### Basic Property Listing
```dart
// Load and search properties
await propertyListingManager.loadProperties();
propertyListingManager.searchProperties("Accra");
propertyListingManager.applyFilters(type: PropertyType.residential);
```

### Property Approval Workflow
```dart
// Single approval
await propertyApprovalManager.approveProperty(propertyGuid);

// Bulk approval
propertyApprovalManager.addToApprovalQueue(propertyGuid1);
propertyApprovalManager.addToApprovalQueue(propertyGuid2);
await propertyApprovalManager.processApprovalQueue();
```

### Officer Assignment
```dart
// Assign property
await propertyAssignmentManager.assignProperty(propertyGuid, officerGuid);

// Check workload
final workload = propertyAssignmentManager.getOfficerWorkload(officerGuid);
```

## 🛠️ Integration

### Dependency Injection
All managers are designed for dependency injection:

```dart
final PropertyListingManager propertyListingManager = GetIt.instance();
```

### BLoC Integration
Use with flutter_bloc for reactive UI:

```dart
BlocBuilder<PropertyListingManager, PropertyListingState>(
  builder: (context, state) {
    if (state.loading) return CircularProgressIndicator();
    return PropertyListWidget(properties: state.filteredProperties);
  },
)
```

## 🔮 Future Enhancements

1. **Real-time Updates**: WebSocket integration for live property updates
2. **Advanced Analytics**: Machine learning for property valuation
3. **Geospatial Features**: Map-based property visualization
4. **Notification System**: Push notifications for approval workflows
5. **Audit Trail**: Complete action history tracking

## 🧪 Testing Strategy

Each manager should be tested with:
- Unit tests for business logic
- State transition tests
- Error handling scenarios
- Queue processing edge cases
- Computed property accuracy

This architecture provides a scalable, maintainable foundation for complex property management workflows while keeping concerns properly separated and states predictable.
