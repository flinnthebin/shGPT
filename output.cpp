#include <iostream>

class Node {
public:
    int data;
    Node* next;
    
    Node(int value) {
        data = value;
        next = nullptr;
    }
};

class LinkedList {
public:
    Node* head;
    
    LinkedList() {
        head = nullptr;
    }
    
    void addNode(int value) {
        Node* newNode = new Node(value);
        if (head == nullptr) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next != nullptr) {
                temp = temp->next;
            }
            temp->next = newNode;
        }
    }
    
    bool hasCycle() {
        if (head == nullptr) {
            return false;
        }
        
        Node* slow = head;
        Node* fast = head->next;
        
        while (fast != nullptr && fast->next != nullptr) {
            if (slow == fast) {
                return true;
            }
            slow = slow->next;
            fast = fast->next->next;
        }
        
        return false;
    }
};

int main() {
    LinkedList list;
    
    list.addNode(1);
    list.addNode(2);
    list.addNode(3);
    list.addNode(4);
    
    // Create a cycle
    list.head->next->next->next->next = list.head->next;
    
    if (list.hasCycle()) {
        std::cout << "The linked list has a cycle." << std::endl;
    } else {
        std::cout << "The linked list does not have a cycle." << std::endl;
    }
    
    return 0;
}
